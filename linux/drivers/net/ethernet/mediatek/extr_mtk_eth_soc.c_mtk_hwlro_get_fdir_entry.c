
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mtk_mac {int * hwlro_ip; } ;
struct ethtool_rxnfc {int fs; } ;
struct TYPE_7__ {int ip4src; int psrc; int pdst; int tos; scalar_t__ ip4dst; } ;
struct TYPE_8__ {TYPE_3__ tcp_ip4_spec; } ;
struct TYPE_5__ {scalar_t__ tos; scalar_t__ pdst; scalar_t__ psrc; scalar_t__ ip4src; int ip4dst; } ;
struct TYPE_6__ {TYPE_1__ tcp_ip4_spec; } ;
struct ethtool_rx_flow_spec {size_t location; TYPE_4__ m_u; TYPE_2__ h_u; int flow_type; } ;


 int TCP_V4_FLOW ;
 struct mtk_mac* netdev_priv (struct net_device*) ;
 int ntohl (int ) ;

__attribute__((used)) static int mtk_hwlro_get_fdir_entry(struct net_device *dev,
        struct ethtool_rxnfc *cmd)
{
 struct mtk_mac *mac = netdev_priv(dev);
 struct ethtool_rx_flow_spec *fsp =
  (struct ethtool_rx_flow_spec *)&cmd->fs;


 fsp->flow_type = TCP_V4_FLOW;
 fsp->h_u.tcp_ip4_spec.ip4dst = ntohl(mac->hwlro_ip[fsp->location]);
 fsp->m_u.tcp_ip4_spec.ip4dst = 0;

 fsp->h_u.tcp_ip4_spec.ip4src = 0;
 fsp->m_u.tcp_ip4_spec.ip4src = 0xffffffff;
 fsp->h_u.tcp_ip4_spec.psrc = 0;
 fsp->m_u.tcp_ip4_spec.psrc = 0xffff;
 fsp->h_u.tcp_ip4_spec.pdst = 0;
 fsp->m_u.tcp_ip4_spec.pdst = 0xffff;
 fsp->h_u.tcp_ip4_spec.tos = 0;
 fsp->m_u.tcp_ip4_spec.tos = 0xff;

 return 0;
}
