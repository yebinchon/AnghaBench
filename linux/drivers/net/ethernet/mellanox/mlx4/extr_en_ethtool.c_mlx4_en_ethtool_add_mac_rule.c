
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int vlan_id_msk; int vlan_id; int dst_mac; int dst_mac_msk; } ;
struct mlx4_spec_list {int list; TYPE_4__ eth; int id; } ;
struct list_head {int dummy; } ;
struct TYPE_6__ {int vlan_tci; } ;
struct TYPE_5__ {int vlan_tci; } ;
struct TYPE_7__ {int flow_type; TYPE_2__ h_ext; TYPE_1__ m_ext; } ;
struct ethtool_rxnfc {TYPE_3__ fs; } ;
typedef unsigned char __be64 ;


 int ETH_ALEN ;
 int FLOW_EXT ;
 int MLX4_MAC_MASK ;
 int MLX4_NET_TRANS_RULE_ID_ETH ;
 int VLAN_VID_MASK ;
 int cpu_to_be16 (int ) ;
 unsigned char cpu_to_be64 (int) ;
 int list_add_tail (int *,struct list_head*) ;
 int memcpy (int ,unsigned char*,int ) ;

__attribute__((used)) static int mlx4_en_ethtool_add_mac_rule(struct ethtool_rxnfc *cmd,
     struct list_head *rule_list_h,
     struct mlx4_spec_list *spec_l2,
     unsigned char *mac)
{
 int err = 0;
 __be64 mac_msk = cpu_to_be64(MLX4_MAC_MASK << 16);

 spec_l2->id = MLX4_NET_TRANS_RULE_ID_ETH;
 memcpy(spec_l2->eth.dst_mac_msk, &mac_msk, ETH_ALEN);
 memcpy(spec_l2->eth.dst_mac, mac, ETH_ALEN);

 if ((cmd->fs.flow_type & FLOW_EXT) &&
     (cmd->fs.m_ext.vlan_tci & cpu_to_be16(VLAN_VID_MASK))) {
  spec_l2->eth.vlan_id = cmd->fs.h_ext.vlan_tci;
  spec_l2->eth.vlan_id_msk = cpu_to_be16(VLAN_VID_MASK);
 }

 list_add_tail(&spec_l2->list, rule_list_h);

 return err;
}
