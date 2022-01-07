
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5640_dev {int fmt; int * last_mode; } ;


 int OV5640_REG_SYS_ROOT_DIVIDER ;
 int OV5640_SCLK2X_ROOT_DIV ;
 int OV5640_SCLK_ROOT_DIV ;
 int ilog2 (int ) ;
 int ov5640_load_regs (struct ov5640_dev*,int *) ;
 int ov5640_mod_reg (struct ov5640_dev*,int ,int,int) ;
 int ov5640_mode_init_data ;
 int ov5640_set_framefmt (struct ov5640_dev*,int *) ;
 int ov5640_set_mode (struct ov5640_dev*) ;

__attribute__((used)) static int ov5640_restore_mode(struct ov5640_dev *sensor)
{
 int ret;


 ret = ov5640_load_regs(sensor, &ov5640_mode_init_data);
 if (ret < 0)
  return ret;
 sensor->last_mode = &ov5640_mode_init_data;

 ret = ov5640_mod_reg(sensor, OV5640_REG_SYS_ROOT_DIVIDER, 0x3f,
        (ilog2(OV5640_SCLK2X_ROOT_DIV) << 2) |
        ilog2(OV5640_SCLK_ROOT_DIV));
 if (ret)
  return ret;


 ret = ov5640_set_mode(sensor);
 if (ret < 0)
  return ret;

 return ov5640_set_framefmt(sensor, &sensor->fmt);
}
