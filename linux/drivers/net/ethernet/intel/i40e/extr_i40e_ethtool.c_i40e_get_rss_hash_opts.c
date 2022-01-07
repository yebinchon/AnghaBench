
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {struct i40e_hw hw; } ;
struct ethtool_rxnfc {int data; int flow_type; } ;






 int EINVAL ;


 scalar_t__ I40E_FILTER_PCTYPE_NONF_IPV4_TCP ;
 scalar_t__ I40E_FILTER_PCTYPE_NONF_IPV4_UDP ;
 scalar_t__ I40E_FILTER_PCTYPE_NONF_IPV6_TCP ;
 scalar_t__ I40E_FILTER_PCTYPE_NONF_IPV6_UDP ;
 int I40E_GLQF_HASH_INSET (int,scalar_t__) ;
 int I40E_L3_DST_MASK ;
 int I40E_L3_SRC_MASK ;
 int I40E_L3_V6_DST_MASK ;
 int I40E_L3_V6_SRC_MASK ;
 int I40E_L4_DST_MASK ;
 int I40E_L4_SRC_MASK ;


 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;






 scalar_t__ i40e_read_rx_ctl (struct i40e_hw*,int ) ;

__attribute__((used)) static int i40e_get_rss_hash_opts(struct i40e_pf *pf, struct ethtool_rxnfc *cmd)
{
 struct i40e_hw *hw = &pf->hw;
 u8 flow_pctype = 0;
 u64 i_set = 0;

 cmd->data = 0;

 switch (cmd->flow_type) {
 case 131:
  flow_pctype = I40E_FILTER_PCTYPE_NONF_IPV4_TCP;
  break;
 case 129:
  flow_pctype = I40E_FILTER_PCTYPE_NONF_IPV4_UDP;
  break;
 case 130:
  flow_pctype = I40E_FILTER_PCTYPE_NONF_IPV6_TCP;
  break;
 case 128:
  flow_pctype = I40E_FILTER_PCTYPE_NONF_IPV6_UDP;
  break;
 case 133:
 case 141:
 case 139:
 case 137:
 case 135:
 case 132:
 case 140:
 case 138:
 case 136:
 case 134:

  cmd->data |= RXH_IP_SRC | RXH_IP_DST;
  break;
 default:
  return -EINVAL;
 }


 if (flow_pctype) {
  i_set = (u64)i40e_read_rx_ctl(hw, I40E_GLQF_HASH_INSET(0,
           flow_pctype)) |
   ((u64)i40e_read_rx_ctl(hw, I40E_GLQF_HASH_INSET(1,
            flow_pctype)) << 32);
 }


 if (i_set) {
  if (i_set & I40E_L4_SRC_MASK)
   cmd->data |= RXH_L4_B_0_1;
  if (i_set & I40E_L4_DST_MASK)
   cmd->data |= RXH_L4_B_2_3;

  if (cmd->flow_type == 131 ||
      cmd->flow_type == 129) {
   if (i_set & I40E_L3_SRC_MASK)
    cmd->data |= RXH_IP_SRC;
   if (i_set & I40E_L3_DST_MASK)
    cmd->data |= RXH_IP_DST;
  } else if (cmd->flow_type == 130 ||
     cmd->flow_type == 128) {
   if (i_set & I40E_L3_V6_SRC_MASK)
    cmd->data |= RXH_IP_SRC;
   if (i_set & I40E_L3_V6_DST_MASK)
    cmd->data |= RXH_IP_DST;
  }
 }

 return 0;
}
