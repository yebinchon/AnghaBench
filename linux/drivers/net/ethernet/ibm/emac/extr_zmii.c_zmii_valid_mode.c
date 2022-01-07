
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PHY_INTERFACE_MODE_MII ;
 int PHY_INTERFACE_MODE_NA ;
 int PHY_INTERFACE_MODE_RMII ;
 int PHY_INTERFACE_MODE_SMII ;

__attribute__((used)) static inline int zmii_valid_mode(int mode)
{
 return mode == PHY_INTERFACE_MODE_MII ||
  mode == PHY_INTERFACE_MODE_RMII ||
  mode == PHY_INTERFACE_MODE_SMII ||
  mode == PHY_INTERFACE_MODE_NA;
}
