
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ethtool_rx_flow_spec {unsigned int ring_cookie; int flow_type; } ;
struct dsa_switch {TYPE_2__* ports; } ;
struct TYPE_6__ {unsigned int num_ports; } ;
struct bcm_sf2_priv {TYPE_3__ hw_params; } ;
typedef unsigned int s8 ;
typedef unsigned int __u64 ;
struct TYPE_5__ {TYPE_1__* cpu_dp; } ;
struct TYPE_4__ {unsigned int index; } ;


 int EINVAL ;
 int FLOW_EXT ;
 unsigned int RX_CLS_FLOW_DISC ;
 unsigned int RX_CLS_FLOW_WAKE ;
 unsigned int SF2_NUM_EGRESS_QUEUES ;




 int bcm_sf2_cfp_ipv4_rule_set (struct bcm_sf2_priv*,int,unsigned int,unsigned int,struct ethtool_rx_flow_spec*) ;
 int bcm_sf2_cfp_ipv6_rule_set (struct bcm_sf2_priv*,int,unsigned int,unsigned int,struct ethtool_rx_flow_spec*) ;
 struct bcm_sf2_priv* bcm_sf2_to_priv (struct dsa_switch*) ;
 scalar_t__ dsa_is_cpu_port (struct dsa_switch*,unsigned int) ;
 scalar_t__ dsa_is_user_port (struct dsa_switch*,unsigned int) ;

__attribute__((used)) static int bcm_sf2_cfp_rule_insert(struct dsa_switch *ds, int port,
       struct ethtool_rx_flow_spec *fs)
{
 struct bcm_sf2_priv *priv = bcm_sf2_to_priv(ds);
 s8 cpu_port = ds->ports[port].cpu_dp->index;
 __u64 ring_cookie = fs->ring_cookie;
 unsigned int queue_num, port_num;
 int ret;




 if (ring_cookie == RX_CLS_FLOW_WAKE)
  ring_cookie = cpu_port * SF2_NUM_EGRESS_QUEUES;





 port_num = ring_cookie / SF2_NUM_EGRESS_QUEUES;

 if (ring_cookie == RX_CLS_FLOW_DISC ||
     !(dsa_is_user_port(ds, port_num) ||
       dsa_is_cpu_port(ds, port_num)) ||
     port_num >= priv->hw_params.num_ports)
  return -EINVAL;




 queue_num = ring_cookie % SF2_NUM_EGRESS_QUEUES;
 if (port_num >= 7)
  port_num -= 1;

 switch (fs->flow_type & ~FLOW_EXT) {
 case 131:
 case 129:
  ret = bcm_sf2_cfp_ipv4_rule_set(priv, port, port_num,
      queue_num, fs);
  break;
 case 130:
 case 128:
  ret = bcm_sf2_cfp_ipv6_rule_set(priv, port, port_num,
      queue_num, fs);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
