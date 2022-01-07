
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2 {int irq_nvecs; TYPE_1__* bnx2_napi; } ;
struct TYPE_2__ {int napi; } ;


 int napi_enable (int *) ;

__attribute__((used)) static void
bnx2_napi_enable(struct bnx2 *bp)
{
 int i;

 for (i = 0; i < bp->irq_nvecs; i++)
  napi_enable(&bp->bnx2_napi[i].napi);
}
