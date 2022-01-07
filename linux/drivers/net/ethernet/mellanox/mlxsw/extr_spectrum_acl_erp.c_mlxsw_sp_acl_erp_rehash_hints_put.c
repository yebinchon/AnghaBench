
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_hints {int dummy; } ;


 int objagg_hints_put (struct objagg_hints*) ;

void mlxsw_sp_acl_erp_rehash_hints_put(void *hints_priv)
{
 struct objagg_hints *hints = hints_priv;

 objagg_hints_put(hints);
}
