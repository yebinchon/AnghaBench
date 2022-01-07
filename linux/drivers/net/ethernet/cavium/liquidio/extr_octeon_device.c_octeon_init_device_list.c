
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_OCTEON_DEVICES ;
 int memset (int ,int ,int) ;
 int oct_set_config_info (int,int) ;
 int octeon_device ;
 int octeon_devices_lock ;
 int spin_lock_init (int *) ;

void octeon_init_device_list(int conf_type)
{
 int i;

 memset(octeon_device, 0, (sizeof(void *) * MAX_OCTEON_DEVICES));
 for (i = 0; i < MAX_OCTEON_DEVICES; i++)
  oct_set_config_info(i, conf_type);
 spin_lock_init(&octeon_devices_lock);
}
