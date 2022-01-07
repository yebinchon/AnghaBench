
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2 {TYPE_1__* prs_shadow; } ;
struct TYPE_2__ {int valid; } ;


 int EINVAL ;
 unsigned char MVPP2_PRS_TCAM_SRAM_SIZE ;
 int swap (unsigned char,unsigned char) ;

__attribute__((used)) static int mvpp2_prs_tcam_first_free(struct mvpp2 *priv, unsigned char start,
         unsigned char end)
{
 int tid;

 if (start > end)
  swap(start, end);

 if (end >= MVPP2_PRS_TCAM_SRAM_SIZE)
  end = MVPP2_PRS_TCAM_SRAM_SIZE - 1;

 for (tid = start; tid <= end; tid++) {
  if (!priv->prs_shadow[tid].valid)
   return tid;
 }

 return -EINVAL;
}
