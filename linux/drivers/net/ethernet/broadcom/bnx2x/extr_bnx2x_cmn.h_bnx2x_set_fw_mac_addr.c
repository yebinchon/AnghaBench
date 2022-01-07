
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __le16 ;



__attribute__((used)) static inline void bnx2x_set_fw_mac_addr(__le16 *fw_hi, __le16 *fw_mid,
      __le16 *fw_lo, u8 *mac)
{
 ((u8 *)fw_hi)[0] = mac[1];
 ((u8 *)fw_hi)[1] = mac[0];
 ((u8 *)fw_mid)[0] = mac[3];
 ((u8 *)fw_mid)[1] = mac[2];
 ((u8 *)fw_lo)[0] = mac[5];
 ((u8 *)fw_lo)[1] = mac[4];
}
