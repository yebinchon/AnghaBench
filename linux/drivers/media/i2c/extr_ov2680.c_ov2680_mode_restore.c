
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov2680_dev {int dummy; } ;


 int ov2680_load_regs (struct ov2680_dev*,int *) ;
 int ov2680_mode_init_data ;
 int ov2680_mode_set (struct ov2680_dev*) ;

__attribute__((used)) static int ov2680_mode_restore(struct ov2680_dev *sensor)
{
 int ret;

 ret = ov2680_load_regs(sensor, &ov2680_mode_init_data);
 if (ret < 0)
  return ret;

 return ov2680_mode_set(sensor);
}
