
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mjpeg_header {int dummy; } ;
struct delta_dev {int dev; } ;
struct delta_ctx {int name; struct delta_dev* dev; } ;
typedef int str ;


 int EINVAL ;
 int ENODATA ;
 unsigned char MJPEG_MARKER ;



 unsigned int delta_mjpeg_read_sof (struct delta_ctx*,unsigned char*,unsigned int,struct mjpeg_header*) ;
 int dev_dbg (int ,char*,int ,unsigned int,int ) ;
 int dev_err (int ,char*,int ,...) ;
 int header_str (struct mjpeg_header*,unsigned char*,int) ;

int delta_mjpeg_read_header(struct delta_ctx *pctx,
       unsigned char *data, unsigned int size,
       struct mjpeg_header *header,
       unsigned int *data_offset)
{
 struct delta_dev *delta = pctx->dev;
 unsigned char str[200];

 unsigned int ret = 0;
 unsigned int offset = 0;
 unsigned int soi = 0;

 if (size < 2)
  goto err_no_more;

 offset = 0;
 while (1) {
  if (data[offset] == MJPEG_MARKER)
   switch (data[offset + 1]) {
   case 128:
    soi = 1;
    *data_offset = offset;
    break;

   case 130:
   case 129:
    if (!soi) {
     dev_err(delta->dev,
      "%s   wrong sequence, got SOF while SOI not seen\n",
      pctx->name);
     return -EINVAL;
    }

    ret = delta_mjpeg_read_sof(pctx,
          &data[offset + 2],
          size - (offset + 2),
          header);
    if (ret)
     goto err;

    goto done;

   default:
    break;
   }

  offset++;
  if ((offset + 2) >= size)
   goto err_no_more;
 }

done:
 dev_dbg(delta->dev,
  "%s   found header @ offset %d:\n%s", pctx->name,
  *data_offset,
  header_str(header, str, sizeof(str)));
 return 0;

err_no_more:
 dev_err(delta->dev,
  "%s   no header found within %d bytes input stream\n",
  pctx->name, size);
 return -ENODATA;

err:
 return ret;
}
