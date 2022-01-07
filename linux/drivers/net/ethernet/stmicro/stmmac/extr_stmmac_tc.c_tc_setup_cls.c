
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int dummy; } ;
struct flow_cls_offload {int command; } ;


 int EOPNOTSUPP ;


 int tc_add_flow (struct stmmac_priv*,struct flow_cls_offload*) ;
 int tc_del_flow (struct stmmac_priv*,struct flow_cls_offload*) ;

__attribute__((used)) static int tc_setup_cls(struct stmmac_priv *priv,
   struct flow_cls_offload *cls)
{
 int ret = 0;

 switch (cls->command) {
 case 128:
  ret = tc_add_flow(priv, cls);
  break;
 case 129:
  ret = tc_del_flow(priv, cls);
  break;
 default:
  return -EOPNOTSUPP;
 }

 return ret;
}
