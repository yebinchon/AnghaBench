
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct camif_scaler {int main_h_ratio; int main_v_ratio; scalar_t__ scaleup_v; scalar_t__ scaleup_h; scalar_t__ enable; } ;
struct camif_vp {scalar_t__ id; int offset; TYPE_1__* out_fmt; struct camif_scaler scaler; struct camif_dev* camif; } ;
struct camif_dev {int dummy; } ;
struct TYPE_2__ {unsigned int color; } ;


 int CIPRSCCTRL_RGB_FORMAT_24BIT ;
 int CIPRSCCTRL_SAMPLE ;
 int CIPRSCCTRL_SCALEUP_H ;
 int CIPRSCCTRL_SCALEUP_V ;
 int CISCCTRL_MAIN_RATIO_MASK ;
 int CISCCTRL_SCALERBYPASS ;
 int CISCCTRL_SCALEUP_H ;
 int CISCCTRL_SCALEUP_MASK ;
 int CISCCTRL_SCALEUP_V ;
 unsigned int IMG_FMT_XRGB8888 ;
 int S3C_CAMIF_REG_CISCCTRL (scalar_t__,int ) ;
 scalar_t__ VP_CODEC ;
 scalar_t__ VP_PREVIEW ;
 int camif_hw_set_prescaler (struct camif_vp*) ;
 int camif_read (struct camif_dev*,int ) ;
 int camif_write (struct camif_dev*,int ,int) ;
 int pr_debug (char*,int,int) ;

__attribute__((used)) static void camif_s3c244x_hw_set_scaler(struct camif_vp *vp)
{
 struct camif_dev *camif = vp->camif;
 struct camif_scaler *scaler = &vp->scaler;
 unsigned int color = vp->out_fmt->color;
 u32 cfg;

 camif_hw_set_prescaler(vp);

 cfg = camif_read(camif, S3C_CAMIF_REG_CISCCTRL(vp->id, vp->offset));

 cfg &= ~(CISCCTRL_SCALEUP_MASK | CISCCTRL_SCALERBYPASS |
   CISCCTRL_MAIN_RATIO_MASK | CIPRSCCTRL_RGB_FORMAT_24BIT);

 if (scaler->enable) {
  if (scaler->scaleup_h) {
   if (vp->id == VP_CODEC)
    cfg |= CISCCTRL_SCALEUP_H;
   else
    cfg |= CIPRSCCTRL_SCALEUP_H;
  }
  if (scaler->scaleup_v) {
   if (vp->id == VP_CODEC)
    cfg |= CISCCTRL_SCALEUP_V;
   else
    cfg |= CIPRSCCTRL_SCALEUP_V;
  }
 } else {
  if (vp->id == VP_CODEC)
   cfg |= CISCCTRL_SCALERBYPASS;
 }

 cfg |= ((scaler->main_h_ratio & 0x1ff) << 16);
 cfg |= scaler->main_v_ratio & 0x1ff;

 if (vp->id == VP_PREVIEW) {
  if (color == IMG_FMT_XRGB8888)
   cfg |= CIPRSCCTRL_RGB_FORMAT_24BIT;
  cfg |= CIPRSCCTRL_SAMPLE;
 }

 camif_write(camif, S3C_CAMIF_REG_CISCCTRL(vp->id, vp->offset), cfg);

 pr_debug("main: h_ratio: %#x, v_ratio: %#x",
   scaler->main_h_ratio, scaler->main_v_ratio);
}
