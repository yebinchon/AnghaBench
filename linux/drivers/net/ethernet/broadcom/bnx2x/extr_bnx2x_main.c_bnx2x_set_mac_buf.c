
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int mac_lo_be ;
typedef int mac_hi_be ;
typedef int __be32 ;
typedef int __be16 ;


 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void bnx2x_set_mac_buf(u8 *mac_buf, u32 mac_lo, u16 mac_hi)
{
 __be16 mac_hi_be = cpu_to_be16(mac_hi);
 __be32 mac_lo_be = cpu_to_be32(mac_lo);
 memcpy(mac_buf, &mac_hi_be, sizeof(mac_hi_be));
 memcpy(mac_buf + sizeof(mac_hi_be), &mac_lo_be, sizeof(mac_lo_be));
}
