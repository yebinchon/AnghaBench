
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int sctp_ip4_spec; int udp_ip4_spec; int tcp_ip4_spec; int usr_ip4_spec; int ether_spec; } ;
struct TYPE_3__ {int sctp_ip4_spec; int udp_ip4_spec; int tcp_ip4_spec; int usr_ip4_spec; int ether_spec; } ;
struct ethtool_rx_flow_spec {int flow_type; int m_ext; int h_ext; TYPE_2__ m_u; TYPE_1__ h_u; } ;


 int EOPNOTSUPP ;

 int FLOW_EXT ;
 int FLOW_MAC_EXT ;
 int IPPROTO_SCTP ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;




 int prep_eth_rule (int *,int *,void*,void*,int *) ;
 int prep_ext_rule (int *,int *,void*,void*,int *) ;
 int prep_l4_rule (int *,int *,void*,void*,int ,int *) ;
 int prep_mac_ext_rule (int *,int *,void*,void*,int *) ;
 int prep_uip_rule (int *,int *,void*,void*,int *) ;

__attribute__((used)) static int prep_cls_rule(struct ethtool_rx_flow_spec *fs, void *key, void *mask,
    u64 *fields)
{
 int err;

 switch (fs->flow_type & 0xFF) {
 case 132:
  err = prep_eth_rule(&fs->h_u.ether_spec, &fs->m_u.ether_spec,
        key, mask, fields);
  break;
 case 131:
  err = prep_uip_rule(&fs->h_u.usr_ip4_spec,
        &fs->m_u.usr_ip4_spec, key, mask, fields);
  break;
 case 129:
  err = prep_l4_rule(&fs->h_u.tcp_ip4_spec, &fs->m_u.tcp_ip4_spec,
       key, mask, IPPROTO_TCP, fields);
  break;
 case 128:
  err = prep_l4_rule(&fs->h_u.udp_ip4_spec, &fs->m_u.udp_ip4_spec,
       key, mask, IPPROTO_UDP, fields);
  break;
 case 130:
  err = prep_l4_rule(&fs->h_u.sctp_ip4_spec,
       &fs->m_u.sctp_ip4_spec, key, mask,
       IPPROTO_SCTP, fields);
  break;
 default:
  return -EOPNOTSUPP;
 }

 if (err)
  return err;

 if (fs->flow_type & FLOW_EXT) {
  err = prep_ext_rule(&fs->h_ext, &fs->m_ext, key, mask, fields);
  if (err)
   return err;
 }

 if (fs->flow_type & FLOW_MAC_EXT) {
  err = prep_mac_ext_rule(&fs->h_ext, &fs->m_ext, key, mask,
     fields);
  if (err)
   return err;
 }

 return 0;
}
