
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stmmac_priv {int dummy; } ;
struct stmmac_flow_entry {int in_use; int cookie; } ;
struct flow_rule {int action; } ;
struct flow_cls_offload {int cookie; } ;
struct TYPE_3__ {int (* fn ) (struct stmmac_priv*,struct flow_cls_offload*,struct stmmac_flow_entry*) ;} ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int ENOENT ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 int stub1 (struct stmmac_priv*,struct flow_cls_offload*,struct stmmac_flow_entry*) ;
 struct stmmac_flow_entry* tc_find_flow (struct stmmac_priv*,struct flow_cls_offload*,int) ;
 TYPE_1__* tc_flow_parsers ;
 int tc_parse_flow_actions (struct stmmac_priv*,int *,struct stmmac_flow_entry*) ;

__attribute__((used)) static int tc_add_flow(struct stmmac_priv *priv,
         struct flow_cls_offload *cls)
{
 struct stmmac_flow_entry *entry = tc_find_flow(priv, cls, 0);
 struct flow_rule *rule = flow_cls_offload_flow_rule(cls);
 int i, ret;

 if (!entry) {
  entry = tc_find_flow(priv, cls, 1);
  if (!entry)
   return -ENOENT;
 }

 ret = tc_parse_flow_actions(priv, &rule->action, entry);
 if (ret)
  return ret;

 for (i = 0; i < ARRAY_SIZE(tc_flow_parsers); i++) {
  ret = tc_flow_parsers[i].fn(priv, cls, entry);
  if (!ret) {
   entry->in_use = 1;
   continue;
  }
 }

 if (!entry->in_use)
  return -EINVAL;

 entry->cookie = cls->cookie;
 return 0;
}
