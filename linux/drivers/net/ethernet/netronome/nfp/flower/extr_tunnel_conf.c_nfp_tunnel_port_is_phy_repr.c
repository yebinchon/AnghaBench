
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FIELD_GET (int ,int) ;
 int NFP_FLOWER_CMSG_PORT_TYPE ;
 scalar_t__ NFP_FLOWER_CMSG_PORT_TYPE_PHYS_PORT ;

__attribute__((used)) static bool nfp_tunnel_port_is_phy_repr(int port)
{
 if (FIELD_GET(NFP_FLOWER_CMSG_PORT_TYPE, port) ==
     NFP_FLOWER_CMSG_PORT_TYPE_PHYS_PORT)
  return 1;

 return 0;
}
