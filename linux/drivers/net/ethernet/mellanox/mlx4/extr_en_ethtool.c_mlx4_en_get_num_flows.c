
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_priv {TYPE_1__* ethtool_rules; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 int MAX_NUM_OF_FS_RULES ;

__attribute__((used)) static int mlx4_en_get_num_flows(struct mlx4_en_priv *priv)
{

 int i, res = 0;
 for (i = 0; i < MAX_NUM_OF_FS_RULES; i++) {
  if (priv->ethtool_rules[i].id)
   res++;
 }
 return res;

}
