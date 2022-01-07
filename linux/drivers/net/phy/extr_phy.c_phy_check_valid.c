
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int phy_lookup_setting (int,int,unsigned long*,int) ;

__attribute__((used)) static inline bool phy_check_valid(int speed, int duplex,
       unsigned long *features)
{
 return !!phy_lookup_setting(speed, duplex, features, 1);
}
