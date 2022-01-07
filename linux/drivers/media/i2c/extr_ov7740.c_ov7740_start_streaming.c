
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ctrl_handler; } ;
struct ov7740 {TYPE_1__ subdev; TYPE_3__* frmsize; int regmap; TYPE_2__* fmt; } ;
struct TYPE_6__ {int reg_num; int regs; } ;
struct TYPE_5__ {int reg_num; int regs; } ;


 int __v4l2_ctrl_handler_setup (int ) ;
 int regmap_multi_reg_write (int ,int ,int ) ;

__attribute__((used)) static int ov7740_start_streaming(struct ov7740 *ov7740)
{
 int ret;

 if (ov7740->fmt) {
  ret = regmap_multi_reg_write(ov7740->regmap,
          ov7740->fmt->regs,
          ov7740->fmt->reg_num);
  if (ret)
   return ret;
 }

 if (ov7740->frmsize) {
  ret = regmap_multi_reg_write(ov7740->regmap,
          ov7740->frmsize->regs,
          ov7740->frmsize->reg_num);
  if (ret)
   return ret;
 }

 return __v4l2_ctrl_handler_setup(ov7740->subdev.ctrl_handler);
}
