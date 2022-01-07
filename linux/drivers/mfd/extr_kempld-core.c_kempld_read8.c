
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kempld_device_data {int io_data; int io_index; } ;


 int ioread8 (int ) ;
 int iowrite8 (int ,int ) ;

u8 kempld_read8(struct kempld_device_data *pld, u8 index)
{
 iowrite8(index, pld->io_index);
 return ioread8(pld->io_data);
}
