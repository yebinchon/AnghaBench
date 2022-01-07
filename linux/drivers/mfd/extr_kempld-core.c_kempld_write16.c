
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct kempld_device_data {int dummy; } ;


 int kempld_write8 (struct kempld_device_data*,scalar_t__,scalar_t__) ;

void kempld_write16(struct kempld_device_data *pld, u8 index, u16 data)
{
 kempld_write8(pld, index, (u8)data);
 kempld_write8(pld, index + 1, (u8)(data >> 8));
}
