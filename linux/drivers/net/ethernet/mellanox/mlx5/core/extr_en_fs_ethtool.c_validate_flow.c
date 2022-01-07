
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int params; } ;
struct mlx5e_priv {TYPE_1__ channels; int profile; } ;
struct TYPE_4__ {int h_dest; } ;
struct ethtool_rx_flow_spec {scalar_t__ location; scalar_t__ ring_cookie; int flow_type; TYPE_2__ m_ext; } ;


 int EINVAL ;
 int ENOSPC ;
 int ENOTSUPP ;

 int FLOW_EXT ;
 int FLOW_MAC_EXT ;


 scalar_t__ MAX_NUM_OF_ETHTOOL_RULES ;
 scalar_t__ RX_CLS_FLOW_DISC ;




 int is_zero_ether_addr (int ) ;
 int mlx5e_qid_validate (int ,int *,scalar_t__) ;
 int validate_ethter (struct ethtool_rx_flow_spec*) ;
 int validate_ip4 (struct ethtool_rx_flow_spec*) ;
 int validate_ip6 (struct ethtool_rx_flow_spec*) ;
 int validate_tcpudp4 (struct ethtool_rx_flow_spec*) ;
 int validate_tcpudp6 (struct ethtool_rx_flow_spec*) ;
 int validate_vlan (struct ethtool_rx_flow_spec*) ;

__attribute__((used)) static int validate_flow(struct mlx5e_priv *priv,
    struct ethtool_rx_flow_spec *fs)
{
 int num_tuples = 0;
 int ret = 0;

 if (fs->location >= MAX_NUM_OF_ETHTOOL_RULES)
  return -ENOSPC;

 if (fs->ring_cookie != RX_CLS_FLOW_DISC)
  if (!mlx5e_qid_validate(priv->profile, &priv->channels.params,
     fs->ring_cookie))
   return -EINVAL;

 switch (fs->flow_type & ~(FLOW_EXT | FLOW_MAC_EXT)) {
 case 134:
  num_tuples += validate_ethter(fs);
  break;
 case 131:
 case 129:
  ret = validate_tcpudp4(fs);
  if (ret < 0)
   return ret;
  num_tuples += ret;
  break;
 case 132:
  ret = validate_ip4(fs);
  if (ret < 0)
   return ret;
  num_tuples += ret;
  break;
 case 130:
 case 128:
  ret = validate_tcpudp6(fs);
  if (ret < 0)
   return ret;
  num_tuples += ret;
  break;
 case 133:
  ret = validate_ip6(fs);
  if (ret < 0)
   return ret;
  num_tuples += ret;
  break;
 default:
  return -ENOTSUPP;
 }
 if ((fs->flow_type & FLOW_EXT)) {
  ret = validate_vlan(fs);
  if (ret < 0)
   return ret;
  num_tuples += ret;
 }

 if (fs->flow_type & FLOW_MAC_EXT &&
     !is_zero_ether_addr(fs->m_ext.h_dest))
  num_tuples++;

 return num_tuples;
}
