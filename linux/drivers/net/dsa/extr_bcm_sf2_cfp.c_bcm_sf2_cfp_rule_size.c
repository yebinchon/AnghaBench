
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_sf2_priv {unsigned int num_cfp_rules; } ;



__attribute__((used)) static inline unsigned int bcm_sf2_cfp_rule_size(struct bcm_sf2_priv *priv)
{

 return priv->num_cfp_rules - 1;
}
