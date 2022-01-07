
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kempld_device_data {int io_index; } ;


 int KEMPLD_MUTEX_KEY ;
 int iowrite8 (int ,int ) ;

__attribute__((used)) static void kempld_release_hardware_mutex(struct kempld_device_data *pld)
{

 iowrite8(KEMPLD_MUTEX_KEY, pld->io_index);
}
