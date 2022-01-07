
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u16 ;
struct ethtool_rxnfc {int fs; } ;
struct TYPE_13__ {void* pdst; void* psrc; void* ip4dst; void* ip4src; } ;
struct TYPE_14__ {TYPE_5__ tcp_ip4_spec; } ;
struct TYPE_10__ {int pdst; int psrc; int ip4dst; int ip4src; } ;
struct TYPE_11__ {TYPE_2__ tcp_ip4_spec; } ;
struct ethtool_rx_flow_spec {int ring_cookie; TYPE_6__ m_u; TYPE_3__ h_u; int flow_type; scalar_t__ location; } ;
struct TYPE_12__ {int dst; int src; } ;
struct TYPE_9__ {int ip_proto; } ;
struct TYPE_15__ {TYPE_4__ ports; TYPE_1__ basic; } ;
struct enic_rfs_fltr_node {int rq_id; TYPE_7__ keys; } ;
struct enic {int dummy; } ;
typedef void* __u32 ;
typedef void* __u16 ;


 int EINVAL ;


 int TCP_V4_FLOW ;
 int UDP_V4_FLOW ;
 int flow_get_u32_dst (TYPE_7__*) ;
 int flow_get_u32_src (TYPE_7__*) ;
 struct enic_rfs_fltr_node* htbl_fltr_search (struct enic*,int ) ;

__attribute__((used)) static int enic_grxclsrule(struct enic *enic, struct ethtool_rxnfc *cmd)
{
 struct ethtool_rx_flow_spec *fsp =
    (struct ethtool_rx_flow_spec *)&cmd->fs;
 struct enic_rfs_fltr_node *n;

 n = htbl_fltr_search(enic, (u16)fsp->location);
 if (!n)
  return -EINVAL;
 switch (n->keys.basic.ip_proto) {
 case 129:
  fsp->flow_type = TCP_V4_FLOW;
  break;
 case 128:
  fsp->flow_type = UDP_V4_FLOW;
  break;
 default:
  return -EINVAL;
  break;
 }

 fsp->h_u.tcp_ip4_spec.ip4src = flow_get_u32_src(&n->keys);
 fsp->m_u.tcp_ip4_spec.ip4src = (__u32)~0;

 fsp->h_u.tcp_ip4_spec.ip4dst = flow_get_u32_dst(&n->keys);
 fsp->m_u.tcp_ip4_spec.ip4dst = (__u32)~0;

 fsp->h_u.tcp_ip4_spec.psrc = n->keys.ports.src;
 fsp->m_u.tcp_ip4_spec.psrc = (__u16)~0;

 fsp->h_u.tcp_ip4_spec.pdst = n->keys.ports.dst;
 fsp->m_u.tcp_ip4_spec.pdst = (__u16)~0;

 fsp->ring_cookie = n->rq_id;

 return 0;
}
