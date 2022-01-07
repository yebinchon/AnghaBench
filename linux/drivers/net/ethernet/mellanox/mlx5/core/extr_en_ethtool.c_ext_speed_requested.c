
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ MLX5E_MAX_PTYS_LEGACY_SPEED ;

__attribute__((used)) static bool ext_speed_requested(u32 speed)
{

 return !!(speed > 100000);
}
