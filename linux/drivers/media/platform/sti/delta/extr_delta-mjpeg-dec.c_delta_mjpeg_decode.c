
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mjpeg_header {int frame_width; int frame_height; } ;
struct delta_mjpeg_ctx {struct mjpeg_header* header; int ipc_hdl; struct mjpeg_header header_struct; } ;
struct delta_dev {int dev; } ;
struct delta_ctx {int stream_errors; int name; struct delta_dev* dev; } ;
struct delta_au {unsigned int vaddr; unsigned int paddr; int size; } ;


 int DELTA_MJPEG_MAX_RESO ;
 int EINVAL ;
 int delta_mjpeg_ipc_decode (struct delta_ctx*,struct delta_au*) ;
 int delta_mjpeg_ipc_open (struct delta_ctx*) ;
 int delta_mjpeg_read_header (struct delta_ctx*,unsigned int,int ,struct mjpeg_header*,unsigned int*) ;
 int dev_err (int ,char*,int ,int,int,int) ;
 struct delta_mjpeg_ctx* to_ctx (struct delta_ctx*) ;

__attribute__((used)) static int delta_mjpeg_decode(struct delta_ctx *pctx, struct delta_au *pau)
{
 struct delta_dev *delta = pctx->dev;
 struct delta_mjpeg_ctx *ctx = to_ctx(pctx);
 int ret;
 struct delta_au au = *pau;
 unsigned int data_offset = 0;
 struct mjpeg_header *header = &ctx->header_struct;

 if (!ctx->header) {
  ret = delta_mjpeg_read_header(pctx, au.vaddr, au.size,
           header, &data_offset);
  if (ret) {
   pctx->stream_errors++;
   goto err;
  }
  if (header->frame_width * header->frame_height >
      DELTA_MJPEG_MAX_RESO) {
   dev_err(delta->dev,
    "%s  stream resolution too large: %dx%d > %d pixels budget\n",
    pctx->name,
    header->frame_width,
    header->frame_height, DELTA_MJPEG_MAX_RESO);
   ret = -EINVAL;
   goto err;
  }
  ctx->header = header;
  goto out;
 }

 if (!ctx->ipc_hdl) {
  ret = delta_mjpeg_ipc_open(pctx);
  if (ret)
   goto err;
 }

 ret = delta_mjpeg_read_header(pctx, au.vaddr, au.size,
          ctx->header, &data_offset);
 if (ret) {
  pctx->stream_errors++;
  goto err;
 }

 au.paddr += data_offset;
 au.vaddr += data_offset;

 ret = delta_mjpeg_ipc_decode(pctx, &au);
 if (ret)
  goto err;

out:
 return 0;

err:
 return ret;
}
