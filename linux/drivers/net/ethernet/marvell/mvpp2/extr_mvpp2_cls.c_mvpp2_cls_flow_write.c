
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_cls_flow_entry {int * data; int index; } ;
struct mvpp2 {int dummy; } ;


 int MVPP2_CLS_FLOW_INDEX_REG ;
 int MVPP2_CLS_FLOW_TBL0_REG ;
 int MVPP2_CLS_FLOW_TBL1_REG ;
 int MVPP2_CLS_FLOW_TBL2_REG ;
 int mvpp2_write (struct mvpp2*,int ,int ) ;

__attribute__((used)) static void mvpp2_cls_flow_write(struct mvpp2 *priv,
     struct mvpp2_cls_flow_entry *fe)
{
 mvpp2_write(priv, MVPP2_CLS_FLOW_INDEX_REG, fe->index);
 mvpp2_write(priv, MVPP2_CLS_FLOW_TBL0_REG, fe->data[0]);
 mvpp2_write(priv, MVPP2_CLS_FLOW_TBL1_REG, fe->data[1]);
 mvpp2_write(priv, MVPP2_CLS_FLOW_TBL2_REG, fe->data[2]);
}
