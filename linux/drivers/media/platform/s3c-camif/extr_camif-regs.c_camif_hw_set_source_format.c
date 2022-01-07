
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_mbus_framefmt {int code; int width; int height; } ;
struct camif_dev {int dev; struct v4l2_mbus_framefmt mbus_fmt; } ;


 int ARRAY_SIZE (int**) ;
 int CISRCFMT_ORDER422_MASK ;
 int CISRCFMT_SIZE_CAM_MASK ;
 int S3C_CAMIF_REG_CISRCFMT ;
 int camif_read (struct camif_dev*,int ) ;
 int camif_write (struct camif_dev*,int ,int) ;
 int dev_err (int ,char*,int) ;
 int** src_pixfmt_map ;

void camif_hw_set_source_format(struct camif_dev *camif)
{
 struct v4l2_mbus_framefmt *mf = &camif->mbus_fmt;
 int i;
 u32 cfg;

 for (i = ARRAY_SIZE(src_pixfmt_map) - 1; i >= 0; i--) {
  if (src_pixfmt_map[i][0] == mf->code)
   break;
 }
 if (i < 0) {
  i = 0;
  dev_err(camif->dev,
   "Unsupported pixel code, falling back to %#08x\n",
   src_pixfmt_map[i][0]);
 }

 cfg = camif_read(camif, S3C_CAMIF_REG_CISRCFMT);
 cfg &= ~(CISRCFMT_ORDER422_MASK | CISRCFMT_SIZE_CAM_MASK);
 cfg |= (mf->width << 16) | mf->height;
 cfg |= src_pixfmt_map[i][1];
 camif_write(camif, S3C_CAMIF_REG_CISRCFMT, cfg);
}
