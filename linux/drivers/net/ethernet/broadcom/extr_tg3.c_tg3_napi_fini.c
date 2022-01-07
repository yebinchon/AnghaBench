
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tg3 {int irq_cnt; TYPE_1__* napi; } ;
struct TYPE_2__ {int napi; } ;


 int netif_napi_del (int *) ;

__attribute__((used)) static void tg3_napi_fini(struct tg3 *tp)
{
 int i;

 for (i = 0; i < tp->irq_cnt; i++)
  netif_napi_del(&tp->napi[i].napi);
}
