
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mvpp2_rfs_rule {int c2_index; int c2_tcam; int c2_tcam_mask; int loc; TYPE_2__* flow; } ;
struct mvpp2_port {int first_rxq; int priv; int id; } ;
struct mvpp2_cls_c2_entry {int index; int* tcam; int act; int* attr; int valid; } ;
struct TYPE_6__ {int index; scalar_t__ ctx; } ;
struct flow_action_entry {scalar_t__ id; TYPE_3__ queue; } ;
typedef int c2 ;
struct TYPE_4__ {struct flow_action_entry* entries; } ;
struct TYPE_5__ {TYPE_1__ action; } ;


 int BIT (int ) ;
 int EINVAL ;
 scalar_t__ FLOW_ACTION_DROP ;
 int MVPP22_C2_COL_NO_UPD_LOCK ;
 int MVPP22_C2_COL_RED_LOCK ;
 int MVPP22_C2_FWD_SW_LOCK ;
 int MVPP22_C2_UPD_LOCK ;
 void* MVPP22_CLS_C2_ACT_COLOR (int ) ;
 int MVPP22_CLS_C2_ACT_FWD (int ) ;
 int MVPP22_CLS_C2_ACT_QHIGH (int ) ;
 int MVPP22_CLS_C2_ACT_QLOW (int ) ;
 int MVPP22_CLS_C2_ACT_RSS_EN (int ) ;
 int MVPP22_CLS_C2_ATTR0_QHIGH (int) ;
 int MVPP22_CLS_C2_ATTR0_QHIGH_MASK ;
 int MVPP22_CLS_C2_ATTR0_QLOW (int) ;
 int MVPP22_CLS_C2_ATTR0_QLOW_MASK ;
 int MVPP22_CLS_C2_ATTR2_RSS_EN ;
 int MVPP22_CLS_C2_LU_TYPE (int ) ;
 int MVPP22_CLS_C2_PORT_ID (int) ;
 int MVPP22_CLS_C2_TCAM_EN (int) ;
 int MVPP2_CLS_LU_TYPE_MASK ;
 int memset (struct mvpp2_cls_c2_entry*,int ,int) ;
 int mvpp22_rss_ctx (struct mvpp2_port*,scalar_t__) ;
 int mvpp2_cls_c2_port_flow_index (struct mvpp2_port*,int ) ;
 int mvpp2_cls_c2_write (int ,struct mvpp2_cls_c2_entry*) ;

__attribute__((used)) static int mvpp2_port_c2_tcam_rule_add(struct mvpp2_port *port,
           struct mvpp2_rfs_rule *rule)
{
 struct flow_action_entry *act;
 struct mvpp2_cls_c2_entry c2;
 u8 qh, ql, pmap;
 int index, ctx;

 memset(&c2, 0, sizeof(c2));

 index = mvpp2_cls_c2_port_flow_index(port, rule->loc);
 if (index < 0)
  return -EINVAL;
 c2.index = index;

 act = &rule->flow->action.entries[0];

 rule->c2_index = c2.index;

 c2.tcam[3] = (rule->c2_tcam & 0xffff) |
       ((rule->c2_tcam_mask & 0xffff) << 16);
 c2.tcam[2] = ((rule->c2_tcam >> 16) & 0xffff) |
       (((rule->c2_tcam_mask >> 16) & 0xffff) << 16);
 c2.tcam[1] = ((rule->c2_tcam >> 32) & 0xffff) |
       (((rule->c2_tcam_mask >> 32) & 0xffff) << 16);
 c2.tcam[0] = ((rule->c2_tcam >> 48) & 0xffff) |
       (((rule->c2_tcam_mask >> 48) & 0xffff) << 16);

 pmap = BIT(port->id);
 c2.tcam[4] = MVPP22_CLS_C2_PORT_ID(pmap);
 c2.tcam[4] |= MVPP22_CLS_C2_TCAM_EN(MVPP22_CLS_C2_PORT_ID(pmap));


 c2.tcam[4] |= MVPP22_CLS_C2_TCAM_EN(MVPP22_CLS_C2_LU_TYPE(MVPP2_CLS_LU_TYPE_MASK));
 c2.tcam[4] |= MVPP22_CLS_C2_LU_TYPE(rule->loc);

 if (act->id == FLOW_ACTION_DROP) {
  c2.act = MVPP22_CLS_C2_ACT_COLOR(MVPP22_C2_COL_RED_LOCK);
 } else {





  c2.act = MVPP22_CLS_C2_ACT_COLOR(MVPP22_C2_COL_NO_UPD_LOCK);


  if (act->queue.ctx)
   c2.attr[2] |= MVPP22_CLS_C2_ATTR2_RSS_EN;





  c2.act = MVPP22_CLS_C2_ACT_RSS_EN(MVPP22_C2_UPD_LOCK);


  c2.act |= MVPP22_CLS_C2_ACT_FWD(MVPP22_C2_FWD_SW_LOCK);

  c2.act |= MVPP22_CLS_C2_ACT_QHIGH(MVPP22_C2_UPD_LOCK) |
      MVPP22_CLS_C2_ACT_QLOW(MVPP22_C2_UPD_LOCK);

  if (act->queue.ctx) {

   ctx = mvpp22_rss_ctx(port, act->queue.ctx);
   if (ctx < 0)
    return -EINVAL;

   qh = (ctx >> 3) & MVPP22_CLS_C2_ATTR0_QHIGH_MASK;
   ql = ctx & MVPP22_CLS_C2_ATTR0_QLOW_MASK;
  } else {
   qh = ((act->queue.index + port->first_rxq) >> 3) &
         MVPP22_CLS_C2_ATTR0_QHIGH_MASK;
   ql = (act->queue.index + port->first_rxq) &
         MVPP22_CLS_C2_ATTR0_QLOW_MASK;
  }

  c2.attr[0] = MVPP22_CLS_C2_ATTR0_QHIGH(qh) |
         MVPP22_CLS_C2_ATTR0_QLOW(ql);
 }

 c2.valid = 1;

 mvpp2_cls_c2_write(port->priv, &c2);

 return 0;
}
