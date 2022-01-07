
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_cls_lookup_entry {int lkpid; int way; scalar_t__ data; } ;
struct mvpp2_cls_c2_entry {int valid; int index; } ;
struct mvpp2_cls_flow_entry {int index; struct mvpp2_cls_c2_entry data; } ;
struct mvpp2 {int dummy; } ;
typedef int c2 ;


 int MVPP22_CLS_C2_N_ENTRIES ;
 int MVPP22_CLS_C2_TCAM_BYPASS_FIFO ;
 int MVPP22_CLS_C2_TCAM_CTRL ;
 int MVPP2_CLS_FLOWS_TBL_SIZE ;
 int MVPP2_CLS_LKP_TBL_SIZE ;
 int MVPP2_CLS_MODE_ACTIVE_MASK ;
 int MVPP2_CLS_MODE_REG ;
 int memset (struct mvpp2_cls_c2_entry*,int ,int) ;
 int mvpp2_cls_c2_write (struct mvpp2*,struct mvpp2_cls_c2_entry*) ;
 int mvpp2_cls_flow_write (struct mvpp2*,struct mvpp2_cls_flow_entry*) ;
 int mvpp2_cls_lookup_write (struct mvpp2*,struct mvpp2_cls_lookup_entry*) ;
 int mvpp2_cls_port_init_flows (struct mvpp2*) ;
 int mvpp2_write (struct mvpp2*,int ,int ) ;

void mvpp2_cls_init(struct mvpp2 *priv)
{
 struct mvpp2_cls_lookup_entry le;
 struct mvpp2_cls_flow_entry fe;
 struct mvpp2_cls_c2_entry c2;
 int index;


 mvpp2_write(priv, MVPP2_CLS_MODE_REG, MVPP2_CLS_MODE_ACTIVE_MASK);


 memset(&fe.data, 0, sizeof(fe.data));
 for (index = 0; index < MVPP2_CLS_FLOWS_TBL_SIZE; index++) {
  fe.index = index;
  mvpp2_cls_flow_write(priv, &fe);
 }


 le.data = 0;
 for (index = 0; index < MVPP2_CLS_LKP_TBL_SIZE; index++) {
  le.lkpid = index;
  le.way = 0;
  mvpp2_cls_lookup_write(priv, &le);

  le.way = 1;
  mvpp2_cls_lookup_write(priv, &le);
 }


 memset(&c2, 0, sizeof(c2));
 c2.valid = 0;
 for (index = 0; index < MVPP22_CLS_C2_N_ENTRIES; index++) {
  c2.index = index;
  mvpp2_cls_c2_write(priv, &c2);
 }




 mvpp2_write(priv, MVPP22_CLS_C2_TCAM_CTRL,
      MVPP22_CLS_C2_TCAM_BYPASS_FIFO);

 mvpp2_cls_port_init_flows(priv);
}
