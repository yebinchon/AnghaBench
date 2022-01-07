
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jpeg_video_decode_init_params_t {int circular_buffer_begin_addr_p; int circular_buffer_end_addr_p; } ;
struct jpeg_decode_return_params_t {int dummy; } ;
struct jpeg_decode_params_t {int dummy; } ;
struct delta_mjpeg_ctx {void* ipc_hdl; struct delta_buf* ipc_buf; int str; } ;
struct delta_ipc_param {int size; struct jpeg_video_decode_init_params_t* data; } ;
struct delta_dev {int dev; } ;
struct delta_ctx {int name; struct delta_dev* dev; } ;
struct delta_buf {int dummy; } ;


 int delta_ipc_open (struct delta_ctx*,char*,struct delta_ipc_param*,int,struct delta_buf**,void**) ;
 int dev_err (int ,char*,int ,int ) ;
 int dev_vdbg (int ,char*,int ,int ) ;
 int ipc_open_param_str (struct jpeg_video_decode_init_params_t*,int ,int) ;
 int memset (struct jpeg_video_decode_init_params_t*,int ,int) ;
 struct delta_mjpeg_ctx* to_ctx (struct delta_ctx*) ;

__attribute__((used)) static int delta_mjpeg_ipc_open(struct delta_ctx *pctx)
{
 struct delta_dev *delta = pctx->dev;
 struct delta_mjpeg_ctx *ctx = to_ctx(pctx);
 int ret = 0;
 struct jpeg_video_decode_init_params_t params_struct;
 struct jpeg_video_decode_init_params_t *params = &params_struct;
 struct delta_buf *ipc_buf;
 u32 ipc_buf_size;
 struct delta_ipc_param ipc_param;
 void *hdl;

 memset(params, 0, sizeof(*params));
 params->circular_buffer_begin_addr_p = 0x00000000;
 params->circular_buffer_end_addr_p = 0xffffffff;

 dev_vdbg(delta->dev,
   "%s  %s\n", pctx->name,
   ipc_open_param_str(params, ctx->str, sizeof(ctx->str)));

 ipc_param.size = sizeof(*params);
 ipc_param.data = params;
 ipc_buf_size = sizeof(struct jpeg_decode_params_t) +
     sizeof(struct jpeg_decode_return_params_t);
 ret = delta_ipc_open(pctx, "JPEG_DECODER_HW0", &ipc_param,
        ipc_buf_size, &ipc_buf, &hdl);
 if (ret) {
  dev_err(delta->dev,
   "%s  dumping command %s\n", pctx->name,
   ipc_open_param_str(params, ctx->str, sizeof(ctx->str)));
  return ret;
 }

 ctx->ipc_buf = ipc_buf;
 ctx->ipc_hdl = hdl;

 return 0;
}
