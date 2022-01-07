
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int BIT (int) ;




__attribute__((used)) static int ath10k_mac_get_max_vht_mcs_map(u16 mcs_map, int nss)
{
 switch ((mcs_map >> (2 * nss)) & 0x3) {
 case 130: return BIT(8) - 1;
 case 129: return BIT(9) - 1;
 case 128: return BIT(10) - 1;
 }
 return 0;
}
