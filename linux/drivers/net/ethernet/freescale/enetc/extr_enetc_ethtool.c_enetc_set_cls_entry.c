
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ethtool_usrip4_spec {int tos; int ip4dst; int ip4src; } ;
struct ethtool_tcpip4_spec {int tos; int pdst; int psrc; int ip4dst; int ip4src; } ;
struct ethhdr {int h_proto; int h_dest; int h_source; } ;
struct TYPE_6__ {struct ethhdr ether_spec; struct ethtool_usrip4_spec usr_ip4_spec; struct ethtool_tcpip4_spec sctp_ip4_spec; struct ethtool_tcpip4_spec udp_ip4_spec; struct ethtool_tcpip4_spec tcp_ip4_spec; } ;
struct TYPE_5__ {struct ethhdr ether_spec; struct ethtool_usrip4_spec usr_ip4_spec; struct ethtool_tcpip4_spec sctp_ip4_spec; struct ethtool_tcpip4_spec udp_ip4_spec; struct ethtool_tcpip4_spec tcp_ip4_spec; } ;
struct ethtool_rx_flow_spec {int flow_type; scalar_t__ ring_cookie; int location; TYPE_3__ m_u; TYPE_2__ h_u; } ;
struct enetc_si {int ndev; } ;
struct TYPE_4__ {int member_0; } ;
struct enetc_cmd_rfse {int ethtype_m; scalar_t__ result; int mode; void* ethtype_h; int dmac_m; int dmac_h; int smac_m; int smac_h; int * dip_m; int * dip_h; int * sip_m; int * sip_h; void* dport_m; void* dport_h; void* sport_m; void* sport_h; TYPE_1__ member_0; } ;


 int ENETC_RFSE_EN ;
 int ENETC_RFSE_MODE_BD ;
 int EOPNOTSUPP ;

 void* ETH_P_IP ;

 scalar_t__ RX_CLS_FLOW_DISC ;



 int enetc_set_fs_entry (struct enetc_si*,struct enetc_cmd_rfse*,int ) ;
 int ether_addr_copy_swap (int ,int ) ;
 int netdev_warn (int ,char*) ;
 void* ntohs (int ) ;

__attribute__((used)) static int enetc_set_cls_entry(struct enetc_si *si,
          struct ethtool_rx_flow_spec *fs, bool en)
{
 struct ethtool_tcpip4_spec *l4ip4_h, *l4ip4_m;
 struct ethtool_usrip4_spec *l3ip4_h, *l3ip4_m;
 struct ethhdr *eth_h, *eth_m;
 struct enetc_cmd_rfse rfse = { {0} };

 if (!en)
  goto done;

 switch (fs->flow_type & 0xff) {
 case 129:
  l4ip4_h = &fs->h_u.tcp_ip4_spec;
  l4ip4_m = &fs->m_u.tcp_ip4_spec;
  goto l4ip4;
 case 128:
  l4ip4_h = &fs->h_u.udp_ip4_spec;
  l4ip4_m = &fs->m_u.udp_ip4_spec;
  goto l4ip4;
 case 130:
  l4ip4_h = &fs->h_u.sctp_ip4_spec;
  l4ip4_m = &fs->m_u.sctp_ip4_spec;
l4ip4:
  rfse.sip_h[0] = l4ip4_h->ip4src;
  rfse.sip_m[0] = l4ip4_m->ip4src;
  rfse.dip_h[0] = l4ip4_h->ip4dst;
  rfse.dip_m[0] = l4ip4_m->ip4dst;
  rfse.sport_h = ntohs(l4ip4_h->psrc);
  rfse.sport_m = ntohs(l4ip4_m->psrc);
  rfse.dport_h = ntohs(l4ip4_h->pdst);
  rfse.dport_m = ntohs(l4ip4_m->pdst);
  if (l4ip4_m->tos)
   netdev_warn(si->ndev, "ToS field is not supported and was ignored\n");
  rfse.ethtype_h = ETH_P_IP;
  rfse.ethtype_m = 0xffff;
  break;
 case 131:
  l3ip4_h = &fs->h_u.usr_ip4_spec;
  l3ip4_m = &fs->m_u.usr_ip4_spec;

  rfse.sip_h[0] = l3ip4_h->ip4src;
  rfse.sip_m[0] = l3ip4_m->ip4src;
  rfse.dip_h[0] = l3ip4_h->ip4dst;
  rfse.dip_m[0] = l3ip4_m->ip4dst;
  if (l3ip4_m->tos)
   netdev_warn(si->ndev, "ToS field is not supported and was ignored\n");
  rfse.ethtype_h = ETH_P_IP;
  rfse.ethtype_m = 0xffff;
  break;
 case 132:
  eth_h = &fs->h_u.ether_spec;
  eth_m = &fs->m_u.ether_spec;

  ether_addr_copy_swap(rfse.smac_h, eth_h->h_source);
  ether_addr_copy_swap(rfse.smac_m, eth_m->h_source);
  ether_addr_copy_swap(rfse.dmac_h, eth_h->h_dest);
  ether_addr_copy_swap(rfse.dmac_m, eth_m->h_dest);
  rfse.ethtype_h = ntohs(eth_h->h_proto);
  rfse.ethtype_m = ntohs(eth_m->h_proto);
  break;
 default:
  return -EOPNOTSUPP;
 }

 rfse.mode |= ENETC_RFSE_EN;
 if (fs->ring_cookie != RX_CLS_FLOW_DISC) {
  rfse.mode |= ENETC_RFSE_MODE_BD;
  rfse.result = fs->ring_cookie;
 }
done:
 return enetc_set_fs_entry(si, &rfse, fs->location);
}
