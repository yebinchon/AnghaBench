
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ri_mask; int ri; } ;
struct mvpp2_cls_flow {TYPE_1__ prs_ri; int flow_id; } ;
struct mvpp2 {int dummy; } ;


 int mvpp2_prs_add_flow (struct mvpp2*,int ,int ,int ) ;

__attribute__((used)) static void mvpp2_cls_flow_prs_init(struct mvpp2 *priv,
        const struct mvpp2_cls_flow *flow)
{
 mvpp2_prs_add_flow(priv, flow->flow_id, flow->prs_ri.ri,
      flow->prs_ri.ri_mask);
}
