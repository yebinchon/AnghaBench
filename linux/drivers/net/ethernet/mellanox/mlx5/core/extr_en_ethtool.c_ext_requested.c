
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 scalar_t__ AUTONEG_ENABLE ;
 int ext_link_mode_requested (unsigned long const*) ;
 int ext_speed_requested (int ) ;

__attribute__((used)) static bool ext_requested(u8 autoneg, const unsigned long *adver, u32 speed)
{
 bool ext_link_mode = ext_link_mode_requested(adver);
 bool ext_speed = ext_speed_requested(speed);

 return autoneg == AUTONEG_ENABLE ? ext_link_mode : ext_speed;
}
