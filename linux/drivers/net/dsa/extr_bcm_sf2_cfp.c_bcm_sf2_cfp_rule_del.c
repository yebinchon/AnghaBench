
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct cfp_rule {int next; } ;
struct TYPE_2__ {int unique; } ;
struct bcm_sf2_priv {TYPE_1__ cfp; } ;


 scalar_t__ CFP_NUM_RULES ;
 int EINVAL ;
 struct cfp_rule* bcm_sf2_cfp_rule_find (struct bcm_sf2_priv*,int,scalar_t__) ;
 int bcm_sf2_cfp_rule_remove (struct bcm_sf2_priv*,int,scalar_t__) ;
 int kfree (struct cfp_rule*) ;
 int list_del (int *) ;
 int test_bit (scalar_t__,int ) ;

__attribute__((used)) static int bcm_sf2_cfp_rule_del(struct bcm_sf2_priv *priv, int port, u32 loc)
{
 struct cfp_rule *rule;
 int ret;

 if (loc >= CFP_NUM_RULES)
  return -EINVAL;





 if (!test_bit(loc, priv->cfp.unique) || loc == 0)
  return -EINVAL;

 rule = bcm_sf2_cfp_rule_find(priv, port, loc);
 if (!rule)
  return -EINVAL;

 ret = bcm_sf2_cfp_rule_remove(priv, port, loc);

 list_del(&rule->next);
 kfree(rule);

 return ret;
}
