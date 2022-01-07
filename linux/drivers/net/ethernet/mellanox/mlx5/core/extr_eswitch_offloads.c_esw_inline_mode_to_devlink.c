
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DEVLINK_ESWITCH_INLINE_MODE_LINK ;
 int DEVLINK_ESWITCH_INLINE_MODE_NETWORK ;
 int DEVLINK_ESWITCH_INLINE_MODE_NONE ;
 int DEVLINK_ESWITCH_INLINE_MODE_TRANSPORT ;
 int EINVAL ;





__attribute__((used)) static int esw_inline_mode_to_devlink(u8 mlx5_mode, u8 *mode)
{
 switch (mlx5_mode) {
 case 129:
  *mode = DEVLINK_ESWITCH_INLINE_MODE_NONE;
  break;
 case 130:
  *mode = DEVLINK_ESWITCH_INLINE_MODE_LINK;
  break;
 case 131:
  *mode = DEVLINK_ESWITCH_INLINE_MODE_NETWORK;
  break;
 case 128:
  *mode = DEVLINK_ESWITCH_INLINE_MODE_TRANSPORT;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
