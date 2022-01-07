
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_cls_u32_offload {int command; } ;
struct stmmac_priv {int dummy; } ;


 int EOPNOTSUPP ;



 int tc_config_knode (struct stmmac_priv*,struct tc_cls_u32_offload*) ;
 int tc_delete_knode (struct stmmac_priv*,struct tc_cls_u32_offload*) ;
 int tc_unfill_entry (struct stmmac_priv*,struct tc_cls_u32_offload*) ;

__attribute__((used)) static int tc_setup_cls_u32(struct stmmac_priv *priv,
       struct tc_cls_u32_offload *cls)
{
 switch (cls->command) {
 case 128:
  tc_unfill_entry(priv, cls);

 case 129:
  return tc_config_knode(priv, cls);
 case 130:
  return tc_delete_knode(priv, cls);
 default:
  return -EOPNOTSUPP;
 }
}
