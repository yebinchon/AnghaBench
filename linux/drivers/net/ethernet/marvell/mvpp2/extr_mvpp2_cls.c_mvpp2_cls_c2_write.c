
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_cls_c2_entry {int * tcam; int * attr; int act; scalar_t__ valid; int index; } ;
struct mvpp2 {int dummy; } ;


 int MVPP22_CLS_C2_ACT ;
 int MVPP22_CLS_C2_ATTR0 ;
 int MVPP22_CLS_C2_ATTR1 ;
 int MVPP22_CLS_C2_ATTR2 ;
 int MVPP22_CLS_C2_ATTR3 ;
 int MVPP22_CLS_C2_TCAM_DATA0 ;
 int MVPP22_CLS_C2_TCAM_DATA1 ;
 int MVPP22_CLS_C2_TCAM_DATA2 ;
 int MVPP22_CLS_C2_TCAM_DATA3 ;
 int MVPP22_CLS_C2_TCAM_DATA4 ;
 int MVPP22_CLS_C2_TCAM_IDX ;
 int MVPP22_CLS_C2_TCAM_INV ;
 int MVPP22_CLS_C2_TCAM_INV_BIT ;
 int mvpp2_read (struct mvpp2*,int ) ;
 int mvpp2_write (struct mvpp2*,int ,int ) ;

__attribute__((used)) static void mvpp2_cls_c2_write(struct mvpp2 *priv,
          struct mvpp2_cls_c2_entry *c2)
{
 u32 val;
 mvpp2_write(priv, MVPP22_CLS_C2_TCAM_IDX, c2->index);

 val = mvpp2_read(priv, MVPP22_CLS_C2_TCAM_INV);
 if (c2->valid)
  val &= ~MVPP22_CLS_C2_TCAM_INV_BIT;
 else
  val |= MVPP22_CLS_C2_TCAM_INV_BIT;
 mvpp2_write(priv, MVPP22_CLS_C2_TCAM_INV, val);

 mvpp2_write(priv, MVPP22_CLS_C2_ACT, c2->act);

 mvpp2_write(priv, MVPP22_CLS_C2_ATTR0, c2->attr[0]);
 mvpp2_write(priv, MVPP22_CLS_C2_ATTR1, c2->attr[1]);
 mvpp2_write(priv, MVPP22_CLS_C2_ATTR2, c2->attr[2]);
 mvpp2_write(priv, MVPP22_CLS_C2_ATTR3, c2->attr[3]);

 mvpp2_write(priv, MVPP22_CLS_C2_TCAM_DATA0, c2->tcam[0]);
 mvpp2_write(priv, MVPP22_CLS_C2_TCAM_DATA1, c2->tcam[1]);
 mvpp2_write(priv, MVPP22_CLS_C2_TCAM_DATA2, c2->tcam[2]);
 mvpp2_write(priv, MVPP22_CLS_C2_TCAM_DATA3, c2->tcam[3]);

 mvpp2_write(priv, MVPP22_CLS_C2_TCAM_DATA4, c2->tcam[4]);
}
