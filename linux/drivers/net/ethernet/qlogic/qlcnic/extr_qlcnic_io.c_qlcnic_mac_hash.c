
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;



__attribute__((used)) static inline u8 qlcnic_mac_hash(u64 mac, u16 vlan)
{
 return (u8)((mac & 0xff) ^ ((mac >> 40) & 0xff) ^ (vlan & 0xff));
}
