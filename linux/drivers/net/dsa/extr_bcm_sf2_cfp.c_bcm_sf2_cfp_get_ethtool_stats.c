
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct dsa_switch {int dummy; } ;
struct cfp_rule {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct bcm_sf2_priv {unsigned int num_cfp_rules; TYPE_1__ cfp; } ;
struct bcm_sf2_cfp_stat {int ram_loc; int offset; } ;


 unsigned int ARRAY_SIZE (struct bcm_sf2_cfp_stat*) ;
 int OP_SEL_READ ;
 int bcm_sf2_cfp_op (struct bcm_sf2_priv*,int) ;
 int bcm_sf2_cfp_rule_addr_set (struct bcm_sf2_priv*,unsigned int) ;
 struct cfp_rule* bcm_sf2_cfp_rule_find (struct bcm_sf2_priv*,int,unsigned int) ;
 struct bcm_sf2_cfp_stat* bcm_sf2_cfp_stats ;
 struct bcm_sf2_priv* bcm_sf2_to_priv (struct dsa_switch*) ;
 int core_readl (struct bcm_sf2_priv*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void bcm_sf2_cfp_get_ethtool_stats(struct dsa_switch *ds, int port,
       uint64_t *data)
{
 struct bcm_sf2_priv *priv = bcm_sf2_to_priv(ds);
 unsigned int s = ARRAY_SIZE(bcm_sf2_cfp_stats);
 const struct bcm_sf2_cfp_stat *stat;
 unsigned int i, j, iter;
 struct cfp_rule *rule;
 int ret;

 mutex_lock(&priv->cfp.lock);
 for (i = 1; i < priv->num_cfp_rules; i++) {
  rule = bcm_sf2_cfp_rule_find(priv, port, i);
  if (!rule)
   continue;

  for (j = 0; j < s; j++) {
   stat = &bcm_sf2_cfp_stats[j];

   bcm_sf2_cfp_rule_addr_set(priv, i);
   ret = bcm_sf2_cfp_op(priv, stat->ram_loc | OP_SEL_READ);
   if (ret)
    continue;

   iter = (i - 1) * s + j;
   data[iter] = core_readl(priv, stat->offset);
  }

 }
 mutex_unlock(&priv->cfp.lock);
}
