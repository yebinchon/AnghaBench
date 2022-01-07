
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_cls_lookup_entry {int way; int lkpid; int data; } ;
struct mvpp2 {int dummy; } ;


 int MVPP2_CLS_LKP_INDEX_REG ;
 int MVPP2_CLS_LKP_INDEX_WAY_OFFS ;
 int MVPP2_CLS_LKP_TBL_REG ;
 int mvpp2_read (struct mvpp2*,int ) ;
 int mvpp2_write (struct mvpp2*,int ,int) ;

void mvpp2_cls_lookup_read(struct mvpp2 *priv, int lkpid, int way,
      struct mvpp2_cls_lookup_entry *le)
{
 u32 val;

 val = (way << MVPP2_CLS_LKP_INDEX_WAY_OFFS) | lkpid;
 mvpp2_write(priv, MVPP2_CLS_LKP_INDEX_REG, val);
 le->way = way;
 le->lkpid = lkpid;
 le->data = mvpp2_read(priv, MVPP2_CLS_LKP_TBL_REG);
}
