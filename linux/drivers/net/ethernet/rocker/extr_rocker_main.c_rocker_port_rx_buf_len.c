
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_port {TYPE_1__* dev; } ;
struct TYPE_2__ {size_t mtu; } ;


 size_t ETH_FCS_LEN ;
 size_t ETH_HLEN ;
 size_t VLAN_HLEN ;

__attribute__((used)) static size_t rocker_port_rx_buf_len(const struct rocker_port *rocker_port)
{
 return rocker_port->dev->mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
}
