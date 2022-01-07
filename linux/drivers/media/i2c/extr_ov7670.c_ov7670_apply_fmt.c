
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct ov7670_win_size {unsigned char com7_bit; TYPE_2__* regs; int vstop; int vstart; int hstop; int hstart; } ;
struct ov7670_info {int mbus_config; unsigned char clkrc; TYPE_1__* fmt; scalar_t__ pclk_hb_disable; struct ov7670_win_size* wsize; } ;
struct TYPE_4__ {unsigned char value; } ;
struct TYPE_3__ {TYPE_2__* regs; } ;


 unsigned char COM10_HREF_REV ;
 unsigned char COM10_PCLK_HB ;
 unsigned char COM10_VS_NEG ;
 int REG_CLKRC ;
 int REG_COM10 ;
 int REG_COM7 ;
 int V4L2_MBUS_HSYNC_ACTIVE_LOW ;
 int V4L2_MBUS_VSYNC_ACTIVE_LOW ;
 int ov7670_set_hw (struct v4l2_subdev*,int ,int ,int ,int ) ;
 int ov7670_write (struct v4l2_subdev*,int ,unsigned char) ;
 int ov7670_write_array (struct v4l2_subdev*,TYPE_2__*) ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7670_apply_fmt(struct v4l2_subdev *sd)
{
 struct ov7670_info *info = to_state(sd);
 struct ov7670_win_size *wsize = info->wsize;
 unsigned char com7, com10 = 0;
 int ret;







 com7 = info->fmt->regs[0].value;
 com7 |= wsize->com7_bit;
 ret = ov7670_write(sd, REG_COM7, com7);
 if (ret)
  return ret;




 if (info->mbus_config & V4L2_MBUS_VSYNC_ACTIVE_LOW)
  com10 |= COM10_VS_NEG;
 if (info->mbus_config & V4L2_MBUS_HSYNC_ACTIVE_LOW)
  com10 |= COM10_HREF_REV;
 if (info->pclk_hb_disable)
  com10 |= COM10_PCLK_HB;
 ret = ov7670_write(sd, REG_COM10, com10);
 if (ret)
  return ret;




 ret = ov7670_write_array(sd, info->fmt->regs + 1);
 if (ret)
  return ret;

 ret = ov7670_set_hw(sd, wsize->hstart, wsize->hstop, wsize->vstart,
       wsize->vstop);
 if (ret)
  return ret;

 if (wsize->regs) {
  ret = ov7670_write_array(sd, wsize->regs);
  if (ret)
   return ret;
 }
 ret = ov7670_write(sd, REG_CLKRC, info->clkrc);
 if (ret)
  return ret;

 return 0;
}
