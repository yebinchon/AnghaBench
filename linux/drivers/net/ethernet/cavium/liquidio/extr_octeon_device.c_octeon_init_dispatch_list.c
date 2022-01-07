
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int lock; TYPE_2__* dlist; scalar_t__ count; } ;
struct octeon_device {TYPE_1__ dispatch; } ;
struct TYPE_4__ {int list; scalar_t__ opcode; } ;


 size_t DISPATCH_LIST_SIZE ;
 int INIT_LIST_HEAD (int *) ;
 size_t REQTYPE_LAST ;
 int octeon_register_reqtype_free_fn (struct octeon_device*,size_t,int *) ;
 int spin_lock_init (int *) ;

int octeon_init_dispatch_list(struct octeon_device *oct)
{
 u32 i;

 oct->dispatch.count = 0;

 for (i = 0; i < DISPATCH_LIST_SIZE; i++) {
  oct->dispatch.dlist[i].opcode = 0;
  INIT_LIST_HEAD(&oct->dispatch.dlist[i].list);
 }

 for (i = 0; i <= REQTYPE_LAST; i++)
  octeon_register_reqtype_free_fn(oct, i, ((void*)0));

 spin_lock_init(&oct->dispatch.lock);

 return 0;
}
