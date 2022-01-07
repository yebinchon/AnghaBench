
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2 {int dummy; } ;


 int MVPP2_CLS_DEC_TBL_HIT_CTR ;
 int MVPP2_CTRS_IDX ;
 int mvpp2_read (struct mvpp2*,int ) ;
 int mvpp2_write (struct mvpp2*,int ,int) ;

u32 mvpp2_cls_lookup_hits(struct mvpp2 *priv, int index)
{
 mvpp2_write(priv, MVPP2_CTRS_IDX, index);

 return mvpp2_read(priv, MVPP2_CLS_DEC_TBL_HIT_CTR);
}
