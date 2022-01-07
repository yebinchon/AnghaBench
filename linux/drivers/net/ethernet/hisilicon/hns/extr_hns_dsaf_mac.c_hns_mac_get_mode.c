
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phy_interface_t ;


 int EINVAL ;
 int MAC_GMAC_IDX ;
 int MAC_XGMAC_IDX ;



__attribute__((used)) static int hns_mac_get_mode(phy_interface_t phy_if)
{
 switch (phy_if) {
 case 129:
  return MAC_GMAC_IDX;
 case 128:
  return MAC_XGMAC_IDX;
 default:
  return -EINVAL;
 }
}
