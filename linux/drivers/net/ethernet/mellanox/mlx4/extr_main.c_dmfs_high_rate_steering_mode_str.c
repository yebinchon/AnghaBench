
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *dmfs_high_rate_steering_mode_str(int dmfs_high_steer_mode)
{
 switch (dmfs_high_steer_mode) {
 case 132:
  return "default performance";

 case 130:
  return "dynamic hybrid mode";

 case 128:
  return "performance optimized for limited rule configuration (static)";

 case 131:
  return "disabled performance optimized steering";

 case 129:
  return "performance optimized steering not supported";

 default:
  return "Unrecognized mode";
 }
}
