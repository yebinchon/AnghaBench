
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ETH_ALEN ;
 int ETH_MULTICAST_BIN_FROM_MAC_SEED ;
 int qed_crc32c_le (int ,int*,int ) ;

u8 qed_mcast_bin_from_mac(u8 *mac)
{
 u32 crc = qed_crc32c_le(ETH_MULTICAST_BIN_FROM_MAC_SEED,
    mac, ETH_ALEN);

 return crc & 0xff;
}
