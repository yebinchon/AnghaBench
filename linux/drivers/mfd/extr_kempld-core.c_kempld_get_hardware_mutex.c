
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kempld_device_data {int io_index; } ;


 int KEMPLD_MUTEX_KEY ;
 int ioread8 (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void kempld_get_hardware_mutex(struct kempld_device_data *pld)
{

 while (ioread8(pld->io_index) & KEMPLD_MUTEX_KEY)
  usleep_range(1000, 3000);
}
