
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct velocity_td_info {int dummy; } ;
struct TYPE_4__ {int numq; scalar_t__* used; scalar_t__* curr; scalar_t__* tail; int * infos; } ;
struct TYPE_3__ {int numtx; } ;
struct velocity_info {TYPE_2__ tx; TYPE_1__ options; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kcalloc (int ,int,int ) ;
 int kfree (int ) ;

__attribute__((used)) static int velocity_init_td_ring(struct velocity_info *vptr)
{
 int j;


 for (j = 0; j < vptr->tx.numq; j++) {

  vptr->tx.infos[j] = kcalloc(vptr->options.numtx,
         sizeof(struct velocity_td_info),
         GFP_KERNEL);
  if (!vptr->tx.infos[j]) {
   while (--j >= 0)
    kfree(vptr->tx.infos[j]);
   return -ENOMEM;
  }

  vptr->tx.tail[j] = vptr->tx.curr[j] = vptr->tx.used[j] = 0;
 }
 return 0;
}
