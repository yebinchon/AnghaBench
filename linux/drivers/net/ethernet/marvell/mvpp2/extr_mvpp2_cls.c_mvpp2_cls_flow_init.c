
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_cls_flow_entry {int index; } ;
struct mvpp2_cls_flow {int flow_id; } ;
struct mvpp2 {int dummy; } ;
typedef int fe ;


 int BIT (int) ;
 int MVPP22_CLS_ENGINE_C2 ;
 int MVPP22_CLS_ENGINE_C3HA ;
 int MVPP22_CLS_LU_TYPE_ALL ;
 int MVPP2_CLS_FLT_C2_RSS_ENTRY (int ) ;
 int MVPP2_CLS_FLT_FIRST (int ) ;
 int MVPP2_CLS_FLT_HASH_ENTRY (int,int ) ;
 int MVPP2_CLS_FLT_LAST (int ) ;
 int MVPP2_MAX_PORTS ;
 int memset (struct mvpp2_cls_flow_entry*,int ,int) ;
 int mvpp2_cls_flow_eng_set (struct mvpp2_cls_flow_entry*,int ) ;
 int mvpp2_cls_flow_last_set (struct mvpp2_cls_flow_entry*,int) ;
 int mvpp2_cls_flow_lu_type_set (struct mvpp2_cls_flow_entry*,int ) ;
 int mvpp2_cls_flow_port_add (struct mvpp2_cls_flow_entry*,int ) ;
 int mvpp2_cls_flow_port_id_sel (struct mvpp2_cls_flow_entry*,int) ;
 int mvpp2_cls_flow_pri_set (struct mvpp2_cls_flow_entry*,int ) ;
 int mvpp2_cls_flow_read (struct mvpp2*,int ,struct mvpp2_cls_flow_entry*) ;
 int mvpp2_cls_flow_write (struct mvpp2*,struct mvpp2_cls_flow_entry*) ;

__attribute__((used)) static void mvpp2_cls_flow_init(struct mvpp2 *priv,
    const struct mvpp2_cls_flow *flow)
{
 struct mvpp2_cls_flow_entry fe;
 int i, pri = 0;


 for (i = MVPP2_CLS_FLT_FIRST(flow->flow_id);
      i <= MVPP2_CLS_FLT_LAST(flow->flow_id); i++) {
  memset(&fe, 0, sizeof(fe));
  fe.index = i;
  mvpp2_cls_flow_pri_set(&fe, pri++);

  if (i == MVPP2_CLS_FLT_LAST(flow->flow_id))
   mvpp2_cls_flow_last_set(&fe, 1);

  mvpp2_cls_flow_write(priv, &fe);
 }


 mvpp2_cls_flow_read(priv, MVPP2_CLS_FLT_C2_RSS_ENTRY(flow->flow_id),
       &fe);

 mvpp2_cls_flow_eng_set(&fe, MVPP22_CLS_ENGINE_C2);
 mvpp2_cls_flow_port_id_sel(&fe, 1);
 mvpp2_cls_flow_lu_type_set(&fe, MVPP22_CLS_LU_TYPE_ALL);


 for (i = 0; i < MVPP2_MAX_PORTS; i++)
  mvpp2_cls_flow_port_add(&fe, BIT(i));

 mvpp2_cls_flow_write(priv, &fe);


 for (i = 0; i < MVPP2_MAX_PORTS; i++) {
  mvpp2_cls_flow_read(priv,
        MVPP2_CLS_FLT_HASH_ENTRY(i, flow->flow_id),
        &fe);




  mvpp2_cls_flow_eng_set(&fe, MVPP22_CLS_ENGINE_C3HA);
  mvpp2_cls_flow_port_id_sel(&fe, 1);
  mvpp2_cls_flow_port_add(&fe, BIT(i));

  mvpp2_cls_flow_write(priv, &fe);
 }
}
