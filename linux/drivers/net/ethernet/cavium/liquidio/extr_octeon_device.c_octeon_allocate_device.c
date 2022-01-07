
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct octeon_device {size_t octeon_id; int device_name; int mem_access_lock; int pci_win_lock; } ;


 size_t MAX_OCTEON_DEVICES ;
 struct octeon_device* octeon_allocate_device_mem (size_t,size_t) ;
 struct octeon_device** octeon_device ;
 int octeon_device_count ;
 int octeon_devices_lock ;
 int snprintf (int ,int,char*,size_t) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

struct octeon_device *octeon_allocate_device(u32 pci_id,
          u32 priv_size)
{
 u32 oct_idx = 0;
 struct octeon_device *oct = ((void*)0);

 spin_lock(&octeon_devices_lock);

 for (oct_idx = 0; oct_idx < MAX_OCTEON_DEVICES; oct_idx++)
  if (!octeon_device[oct_idx])
   break;

 if (oct_idx < MAX_OCTEON_DEVICES) {
  oct = octeon_allocate_device_mem(pci_id, priv_size);
  if (oct) {
   octeon_device_count++;
   octeon_device[oct_idx] = oct;
  }
 }

 spin_unlock(&octeon_devices_lock);
 if (!oct)
  return ((void*)0);

 spin_lock_init(&oct->pci_win_lock);
 spin_lock_init(&oct->mem_access_lock);

 oct->octeon_id = oct_idx;
 snprintf(oct->device_name, sizeof(oct->device_name),
   "LiquidIO%d", (oct->octeon_id));

 return oct;
}
