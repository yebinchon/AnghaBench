
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {void* dst_ip_msk; int dst_ip; void* src_ip_msk; int src_ip; } ;
struct mlx4_spec_list {int list; TYPE_5__ ipv4; int id; } ;
struct mlx4_en_priv {int dummy; } ;
struct list_head {int dummy; } ;
struct ethtool_usrip4_spec {scalar_t__ ip4dst; scalar_t__ ip4src; } ;
struct TYPE_7__ {int ip4dst; int ip4src; } ;
struct TYPE_8__ {TYPE_2__ usr_ip4_spec; } ;
struct TYPE_6__ {struct ethtool_usrip4_spec usr_ip4_spec; } ;
struct TYPE_9__ {TYPE_3__ h_u; TYPE_1__ m_u; } ;
struct ethtool_rxnfc {TYPE_4__ fs; } ;


 int ENOMEM ;
 void* EN_ETHTOOL_WORD_MASK ;
 int GFP_KERNEL ;
 int MLX4_NET_TRANS_RULE_ID_IPV4 ;
 int kfree (struct mlx4_spec_list*) ;
 struct mlx4_spec_list* kzalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int mlx4_en_ethtool_add_mac_rule_by_ipv4 (struct mlx4_en_priv*,struct ethtool_rxnfc*,struct list_head*,struct mlx4_spec_list*,int ) ;

__attribute__((used)) static int add_ip_rule(struct mlx4_en_priv *priv,
         struct ethtool_rxnfc *cmd,
         struct list_head *list_h)
{
 int err;
 struct mlx4_spec_list *spec_l2 = ((void*)0);
 struct mlx4_spec_list *spec_l3 = ((void*)0);
 struct ethtool_usrip4_spec *l3_mask = &cmd->fs.m_u.usr_ip4_spec;

 spec_l3 = kzalloc(sizeof(*spec_l3), GFP_KERNEL);
 spec_l2 = kzalloc(sizeof(*spec_l2), GFP_KERNEL);
 if (!spec_l2 || !spec_l3) {
  err = -ENOMEM;
  goto free_spec;
 }

 err = mlx4_en_ethtool_add_mac_rule_by_ipv4(priv, cmd, list_h, spec_l2,
         cmd->fs.h_u.
         usr_ip4_spec.ip4dst);
 if (err)
  goto free_spec;
 spec_l3->id = MLX4_NET_TRANS_RULE_ID_IPV4;
 spec_l3->ipv4.src_ip = cmd->fs.h_u.usr_ip4_spec.ip4src;
 if (l3_mask->ip4src)
  spec_l3->ipv4.src_ip_msk = EN_ETHTOOL_WORD_MASK;
 spec_l3->ipv4.dst_ip = cmd->fs.h_u.usr_ip4_spec.ip4dst;
 if (l3_mask->ip4dst)
  spec_l3->ipv4.dst_ip_msk = EN_ETHTOOL_WORD_MASK;
 list_add_tail(&spec_l3->list, list_h);

 return 0;

free_spec:
 kfree(spec_l2);
 kfree(spec_l3);
 return err;
}
