
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct nsim_trap_item {int dummy; } ;
struct nsim_trap_data {struct nsim_trap_item* trap_items_arr; } ;
struct nsim_dev {struct nsim_trap_data* trap_data; } ;
struct TYPE_3__ {scalar_t__ id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* nsim_traps_arr ;

__attribute__((used)) static struct nsim_trap_item *
nsim_dev_trap_item_lookup(struct nsim_dev *nsim_dev, u16 trap_id)
{
 struct nsim_trap_data *nsim_trap_data = nsim_dev->trap_data;
 int i;

 for (i = 0; i < ARRAY_SIZE(nsim_traps_arr); i++) {
  if (nsim_traps_arr[i].id == trap_id)
   return &nsim_trap_data->trap_items_arr[i];
 }

 return ((void*)0);
}
