
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_fc_en; int rx_fc_en; } ;
union gmac_config0 {TYPE_1__ bits; int bits32; } ;
struct net_device {int dummy; } ;
struct gemini_ethernet_port {scalar_t__ gmac_base; } ;
struct ethtool_pauseparam {int autoneg; int tx_pause; int rx_pause; } ;


 scalar_t__ GMAC_CONFIG0 ;
 struct gemini_ethernet_port* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void gmac_get_pauseparam(struct net_device *netdev,
    struct ethtool_pauseparam *pparam)
{
 struct gemini_ethernet_port *port = netdev_priv(netdev);
 union gmac_config0 config0;

 config0.bits32 = readl(port->gmac_base + GMAC_CONFIG0);

 pparam->rx_pause = config0.bits.rx_fc_en;
 pparam->tx_pause = config0.bits.tx_fc_en;
 pparam->autoneg = 1;
}
