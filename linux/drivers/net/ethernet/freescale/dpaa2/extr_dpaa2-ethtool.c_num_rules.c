
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpaa2_eth_priv {TYPE_1__* cls_rules; } ;
struct TYPE_2__ {scalar_t__ in_use; } ;


 int dpaa2_eth_fs_count (struct dpaa2_eth_priv*) ;

__attribute__((used)) static int num_rules(struct dpaa2_eth_priv *priv)
{
 int i, rules = 0;

 for (i = 0; i < dpaa2_eth_fs_count(priv); i++)
  if (priv->cls_rules[i].in_use)
   rules++;

 return rules;
}
