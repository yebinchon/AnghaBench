
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_cls_lookup_entry {int data; int lkpid; scalar_t__ way; } ;
struct mvpp2_cls_flow {int flow_id; } ;
struct mvpp2 {int dummy; } ;


 int MVPP2_CLS_FLT_FIRST (int ) ;
 int MVPP2_CLS_LKP_FLOW_PTR (int ) ;
 int MVPP2_CLS_LKP_TBL_LOOKUP_EN_MASK ;
 int mvpp2_cls_lookup_write (struct mvpp2*,struct mvpp2_cls_lookup_entry*) ;

__attribute__((used)) static void mvpp2_cls_flow_lkp_init(struct mvpp2 *priv,
        const struct mvpp2_cls_flow *flow)
{
 struct mvpp2_cls_lookup_entry le;

 le.way = 0;
 le.lkpid = flow->flow_id;


 le.data = 0;




 le.data |= MVPP2_CLS_LKP_FLOW_PTR(MVPP2_CLS_FLT_FIRST(flow->flow_id));


 le.data |= MVPP2_CLS_LKP_TBL_LOOKUP_EN_MASK;

 mvpp2_cls_lookup_write(priv, &le);
}
