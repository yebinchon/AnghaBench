
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_eth_table_port {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int FEC_BASER ;
 int FEC_NONE ;
 int FEC_RS ;
 unsigned int NFP_FEC_BASER ;
 unsigned int NFP_FEC_REED_SOLOMON ;
 int advertising ;
 int ethtool_link_ksettings_add_link_mode (struct ethtool_link_ksettings*,int ,int ) ;
 int nfp_eth_can_support_fec (struct nfp_eth_table_port*) ;
 unsigned int nfp_eth_supported_fec_modes (struct nfp_eth_table_port*) ;
 int supported ;

__attribute__((used)) static void
nfp_net_set_fec_link_mode(struct nfp_eth_table_port *eth_port,
     struct ethtool_link_ksettings *c)
{
 unsigned int modes;

 ethtool_link_ksettings_add_link_mode(c, supported, FEC_NONE);
 if (!nfp_eth_can_support_fec(eth_port)) {
  ethtool_link_ksettings_add_link_mode(c, advertising, FEC_NONE);
  return;
 }

 modes = nfp_eth_supported_fec_modes(eth_port);
 if (modes & NFP_FEC_BASER) {
  ethtool_link_ksettings_add_link_mode(c, supported, FEC_BASER);
  ethtool_link_ksettings_add_link_mode(c, advertising, FEC_BASER);
 }

 if (modes & NFP_FEC_REED_SOLOMON) {
  ethtool_link_ksettings_add_link_mode(c, supported, FEC_RS);
  ethtool_link_ksettings_add_link_mode(c, advertising, FEC_RS);
 }
}
