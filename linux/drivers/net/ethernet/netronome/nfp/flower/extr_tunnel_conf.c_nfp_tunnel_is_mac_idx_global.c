
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int NFP_FLOWER_CMSG_PORT_TYPE_OTHER_PORT ;

__attribute__((used)) static bool nfp_tunnel_is_mac_idx_global(u16 nfp_mac_idx)
{
 return (nfp_mac_idx & 0xff) == NFP_FLOWER_CMSG_PORT_TYPE_OTHER_PORT;
}
