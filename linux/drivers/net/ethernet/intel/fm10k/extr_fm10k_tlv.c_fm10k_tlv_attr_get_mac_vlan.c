
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
typedef int s32 ;
typedef int __le32 ;
typedef int __le16 ;


 int FM10K_ERR_PARAM ;
 int cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (int) ;

s32 fm10k_tlv_attr_get_mac_vlan(u32 *attr, u8 *mac_addr, u16 *vlan)
{

 if (!mac_addr || !attr)
  return FM10K_ERR_PARAM;

 *(__le32 *)&mac_addr[0] = cpu_to_le32(attr[1]);
 *(__le16 *)&mac_addr[4] = cpu_to_le16((u16)(attr[2]));
 *vlan = (u16)(attr[2] >> 16);

 return 0;
}
