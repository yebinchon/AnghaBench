
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct dln2_dev {TYPE_1__* mod_rx_slots; } ;
struct TYPE_2__ {int wq; } ;


 int find_free_slot (struct dln2_dev*,size_t,int*) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int alloc_rx_slot(struct dln2_dev *dln2, u16 handle)
{
 int ret;
 int slot;





 ret = wait_event_interruptible(dln2->mod_rx_slots[handle].wq,
           find_free_slot(dln2, handle, &slot));
 if (ret < 0)
  return ret;

 return slot;
}
