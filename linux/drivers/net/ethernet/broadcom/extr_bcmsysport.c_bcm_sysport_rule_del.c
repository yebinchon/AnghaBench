
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bcm_sysport_priv {scalar_t__* filters_loc; int filters; } ;


 int EOPNOTSUPP ;
 int bcm_sysport_rule_find (struct bcm_sysport_priv*,int ) ;
 int clear_bit (int,int ) ;

__attribute__((used)) static int bcm_sysport_rule_del(struct bcm_sysport_priv *priv,
    u64 location)
{
 int index;


 index = bcm_sysport_rule_find(priv, location);
 if (index < 0)
  return -EOPNOTSUPP;




 clear_bit(index, priv->filters);
 priv->filters_loc[index] = 0;

 return 0;
}
