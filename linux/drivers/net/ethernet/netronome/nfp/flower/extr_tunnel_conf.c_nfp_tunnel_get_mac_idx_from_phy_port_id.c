
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int NFP_FLOWER_CMSG_PORT_TYPE_PHYS_PORT ;

__attribute__((used)) static u16 nfp_tunnel_get_mac_idx_from_phy_port_id(int port)
{
 return port << 8 | NFP_FLOWER_CMSG_PORT_TYPE_PHYS_PORT;
}
