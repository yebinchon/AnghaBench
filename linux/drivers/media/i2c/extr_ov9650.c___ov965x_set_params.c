
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ov965x_ctrls {TYPE_2__* light_freq; } ;
struct ov965x {scalar_t__ tslb_reg; TYPE_1__* fiv; scalar_t__ apply_frame_fmt; struct ov965x_ctrls ctrls; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_3__ {scalar_t__ clkrc_div; } ;


 scalar_t__ COM11_BANDING ;
 scalar_t__ DEF_CLKRC ;
 int REG_CLKRC ;
 int REG_COM11 ;
 int REG_TSLB ;
 scalar_t__ TSLB_YUYV_MASK ;
 int ov965x_read (struct ov965x*,int ,scalar_t__*) ;
 int ov965x_set_banding_filter (struct ov965x*,int ) ;
 int ov965x_set_color_matrix (struct ov965x*) ;
 int ov965x_set_default_gamma_curve (struct ov965x*) ;
 int ov965x_set_frame_size (struct ov965x*) ;
 int ov965x_write (struct ov965x*,int ,scalar_t__) ;

__attribute__((used)) static int __ov965x_set_params(struct ov965x *ov965x)
{
 struct ov965x_ctrls *ctrls = &ov965x->ctrls;
 int ret = 0;
 u8 reg;

 if (ov965x->apply_frame_fmt) {
  reg = DEF_CLKRC + ov965x->fiv->clkrc_div;
  ret = ov965x_write(ov965x, REG_CLKRC, reg);
  if (ret < 0)
   return ret;
  ret = ov965x_set_frame_size(ov965x);
  if (ret < 0)
   return ret;
  ret = ov965x_read(ov965x, REG_TSLB, &reg);
  if (ret < 0)
   return ret;
  reg &= ~TSLB_YUYV_MASK;
  reg |= ov965x->tslb_reg;
  ret = ov965x_write(ov965x, REG_TSLB, reg);
  if (ret < 0)
   return ret;
 }
 ret = ov965x_set_default_gamma_curve(ov965x);
 if (ret < 0)
  return ret;
 ret = ov965x_set_color_matrix(ov965x);
 if (ret < 0)
  return ret;




 ret = ov965x_read(ov965x, REG_COM11, &reg);
 if (!ret)
  reg |= COM11_BANDING;
 ret = ov965x_write(ov965x, REG_COM11, reg);
 if (ret < 0)
  return ret;




 return ov965x_set_banding_filter(ov965x, ctrls->light_freq->val);
}
