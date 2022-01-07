
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static int nfp_tunnel_get_ida_from_global_mac_idx(u16 nfp_mac_idx)
{
 return nfp_mac_idx >> 8;
}
