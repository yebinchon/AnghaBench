
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cvm_mmc_slot {size_t bus_id; int mmc; TYPE_1__* host; } ;
struct TYPE_2__ {int ** slot; } ;


 int mmc_free_host (int ) ;
 int mmc_remove_host (int ) ;

int cvm_mmc_of_slot_remove(struct cvm_mmc_slot *slot)
{
 mmc_remove_host(slot->mmc);
 slot->host->slot[slot->bus_id] = ((void*)0);
 mmc_free_host(slot->mmc);
 return 0;
}
