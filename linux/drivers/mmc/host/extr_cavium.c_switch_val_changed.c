
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cvm_mmc_slot {int cached_switch; } ;



__attribute__((used)) static bool switch_val_changed(struct cvm_mmc_slot *slot, u64 new_val)
{

 u64 match = 0x3001070fffffffffull;

 return (slot->cached_switch & match) != (new_val & match);
}
