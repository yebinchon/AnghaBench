
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;
struct il_ht_config {int dummy; } ;


 int _il_set_rxon_ht (struct il_priv*,struct il_ht_config*) ;

void
il_set_rxon_ht(struct il_priv *il, struct il_ht_config *ht_conf)
{
 _il_set_rxon_ht(il, ht_conf);
}
