
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct camif_scaler {int main_h_ratio; int main_v_ratio; scalar_t__ copy; scalar_t__ scaleup_v; scalar_t__ scaleup_h; int enable; } ;
struct camif_vp {int offset; int id; TYPE_1__* out_fmt; struct camif_scaler scaler; struct camif_dev* camif; } ;
struct camif_dev {int dummy; } ;
struct TYPE_2__ {unsigned int color; } ;


 int CISCCTRL_CSCR2Y_WIDE ;
 int CISCCTRL_CSCY2R_WIDE ;
 int CISCCTRL_EXTRGB_EXTENSION ;
 int CISCCTRL_INRGB_FMT_MASK ;
 int CISCCTRL_INTERLACE ;
 int CISCCTRL_MAIN_RATIO_MASK ;
 int CISCCTRL_ONE2ONE ;
 int CISCCTRL_OUTRGB_FMT_MASK ;
 int CISCCTRL_OUTRGB_FMT_RGB666 ;
 int CISCCTRL_OUTRGB_FMT_RGB888 ;
 int CISCCTRL_SCALERBYPASS ;
 int CISCCTRL_SCALEUP_H ;
 int CISCCTRL_SCALEUP_V ;


 int S3C_CAMIF_REG_CISCCTRL (int ,int ) ;
 int camif_hw_set_prescaler (struct camif_vp*) ;
 int camif_read (struct camif_dev*,int ) ;
 int camif_write (struct camif_dev*,int ,int) ;
 int pr_debug (char*,int,int) ;

__attribute__((used)) static void camif_s3c64xx_hw_set_scaler(struct camif_vp *vp)
{
 struct camif_dev *camif = vp->camif;
 struct camif_scaler *scaler = &vp->scaler;
 unsigned int color = vp->out_fmt->color;
 u32 cfg;

 camif_hw_set_prescaler(vp);

 cfg = camif_read(camif, S3C_CAMIF_REG_CISCCTRL(vp->id, vp->offset));

 cfg &= ~(CISCCTRL_CSCR2Y_WIDE | CISCCTRL_CSCY2R_WIDE
  | CISCCTRL_SCALEUP_H | CISCCTRL_SCALEUP_V
  | CISCCTRL_SCALERBYPASS | CISCCTRL_ONE2ONE
  | CISCCTRL_INRGB_FMT_MASK | CISCCTRL_OUTRGB_FMT_MASK
  | CISCCTRL_INTERLACE | CISCCTRL_EXTRGB_EXTENSION
  | CISCCTRL_MAIN_RATIO_MASK);

 cfg |= (CISCCTRL_CSCR2Y_WIDE | CISCCTRL_CSCY2R_WIDE);

 if (!scaler->enable) {
  cfg |= CISCCTRL_SCALERBYPASS;
 } else {
  if (scaler->scaleup_h)
   cfg |= CISCCTRL_SCALEUP_H;
  if (scaler->scaleup_v)
   cfg |= CISCCTRL_SCALEUP_V;
  if (scaler->copy)
   cfg |= CISCCTRL_ONE2ONE;
 }

 switch (color) {
 case 129:
  cfg |= CISCCTRL_OUTRGB_FMT_RGB666;
  break;
 case 128:
  cfg |= CISCCTRL_OUTRGB_FMT_RGB888;
  break;
 }

 cfg |= (scaler->main_h_ratio & 0x1ff) << 16;
 cfg |= scaler->main_v_ratio & 0x1ff;

 camif_write(camif, S3C_CAMIF_REG_CISCCTRL(vp->id, vp->offset), cfg);

 pr_debug("main: h_ratio: %#x, v_ratio: %#x",
   scaler->main_h_ratio, scaler->main_v_ratio);
}
