
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int* wlc_phy_get_ofdm_rate_lookup () ;

__attribute__((used)) static inline u8 ofdm_phy2mac_rate(u8 rlpt)
{
 return wlc_phy_get_ofdm_rate_lookup()[rlpt & 0x7];
}
