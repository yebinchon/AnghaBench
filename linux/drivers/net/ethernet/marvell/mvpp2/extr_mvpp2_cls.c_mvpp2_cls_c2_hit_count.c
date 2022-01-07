
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2 {int dummy; } ;


 int MVPP22_CLS_C2_HIT_CTR ;
 int MVPP22_CLS_C2_TCAM_IDX ;
 int mvpp2_read (struct mvpp2*,int ) ;
 int mvpp2_write (struct mvpp2*,int ,int) ;

u32 mvpp2_cls_c2_hit_count(struct mvpp2 *priv, int c2_index)
{
 mvpp2_write(priv, MVPP22_CLS_C2_TCAM_IDX, c2_index);

 return mvpp2_read(priv, MVPP22_CLS_C2_HIT_CTR);
}
