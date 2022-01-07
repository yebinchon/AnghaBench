
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mvpp2_port {int first_rxq; int priv; int id; } ;
struct mvpp2_cls_c2_entry {int act; int* attr; int valid; int * tcam; int index; } ;
typedef int c2 ;


 int BIT (int ) ;
 int MVPP22_C2_FWD_SW_LOCK ;
 int MVPP22_C2_UPD ;
 int MVPP22_C2_UPD_LOCK ;
 int MVPP22_CLS_C2_ACT_FWD (int ) ;
 int MVPP22_CLS_C2_ACT_QHIGH (int ) ;
 int MVPP22_CLS_C2_ACT_QLOW (int ) ;
 int MVPP22_CLS_C2_ACT_RSS_EN (int ) ;
 int MVPP22_CLS_C2_ATTR0_QHIGH (int) ;
 int MVPP22_CLS_C2_ATTR0_QHIGH_MASK ;
 int MVPP22_CLS_C2_ATTR0_QLOW (int) ;
 int MVPP22_CLS_C2_ATTR0_QLOW_MASK ;
 int MVPP22_CLS_C2_LU_TYPE (int ) ;
 int MVPP22_CLS_C2_PORT_ID (int) ;
 int MVPP22_CLS_C2_RSS_ENTRY (int ) ;
 int MVPP22_CLS_C2_TCAM_EN (int ) ;
 int MVPP22_CLS_LU_TYPE_ALL ;
 int MVPP2_CLS_LU_TYPE_MASK ;
 int memset (struct mvpp2_cls_c2_entry*,int ,int) ;
 int mvpp2_cls_c2_write (int ,struct mvpp2_cls_c2_entry*) ;

__attribute__((used)) static void mvpp2_port_c2_cls_init(struct mvpp2_port *port)
{
 struct mvpp2_cls_c2_entry c2;
 u8 qh, ql, pmap;

 memset(&c2, 0, sizeof(c2));

 c2.index = MVPP22_CLS_C2_RSS_ENTRY(port->id);

 pmap = BIT(port->id);
 c2.tcam[4] = MVPP22_CLS_C2_PORT_ID(pmap);
 c2.tcam[4] |= MVPP22_CLS_C2_TCAM_EN(MVPP22_CLS_C2_PORT_ID(pmap));


 c2.tcam[4] |= MVPP22_CLS_C2_TCAM_EN(MVPP22_CLS_C2_LU_TYPE(MVPP2_CLS_LU_TYPE_MASK));
 c2.tcam[4] |= MVPP22_CLS_C2_LU_TYPE(MVPP22_CLS_LU_TYPE_ALL);


 c2.act = MVPP22_CLS_C2_ACT_RSS_EN(MVPP22_C2_UPD_LOCK);


 c2.act |= MVPP22_CLS_C2_ACT_FWD(MVPP22_C2_FWD_SW_LOCK);




 c2.act |= MVPP22_CLS_C2_ACT_QHIGH(MVPP22_C2_UPD) |
     MVPP22_CLS_C2_ACT_QLOW(MVPP22_C2_UPD);

 qh = (port->first_rxq >> 3) & MVPP22_CLS_C2_ATTR0_QHIGH_MASK;
 ql = port->first_rxq & MVPP22_CLS_C2_ATTR0_QLOW_MASK;

 c2.attr[0] = MVPP22_CLS_C2_ATTR0_QHIGH(qh) |
        MVPP22_CLS_C2_ATTR0_QLOW(ql);

 c2.valid = 1;

 mvpp2_cls_c2_write(port->priv, &c2);
}
