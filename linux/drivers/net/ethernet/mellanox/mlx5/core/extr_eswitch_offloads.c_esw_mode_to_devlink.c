
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int DEVLINK_ESWITCH_MODE_LEGACY ;
 int DEVLINK_ESWITCH_MODE_SWITCHDEV ;
 int EINVAL ;



__attribute__((used)) static int esw_mode_to_devlink(u16 mlx5_mode, u16 *mode)
{
 switch (mlx5_mode) {
 case 129:
  *mode = DEVLINK_ESWITCH_MODE_LEGACY;
  break;
 case 128:
  *mode = DEVLINK_ESWITCH_MODE_SWITCHDEV;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
