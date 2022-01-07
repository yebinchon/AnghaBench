
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kempld_device_data {int io_data; int io_index; } ;


 int iowrite8 (int ,int ) ;

void kempld_write8(struct kempld_device_data *pld, u8 index, u8 data)
{
 iowrite8(index, pld->io_index);
 iowrite8(data, pld->io_data);
}
