
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5640_mode_info {int reg_data; } ;
struct ov5640_dev {int dummy; } ;


 int EINVAL ;
 int ov5640_load_regs (struct ov5640_dev*,struct ov5640_mode_info const*) ;

__attribute__((used)) static int ov5640_set_mode_direct(struct ov5640_dev *sensor,
      const struct ov5640_mode_info *mode)
{
 if (!mode->reg_data)
  return -EINVAL;


 return ov5640_load_regs(sensor, mode);
}
