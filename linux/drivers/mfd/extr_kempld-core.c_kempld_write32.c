
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct kempld_device_data {int dummy; } ;


 int kempld_write16 (struct kempld_device_data*,scalar_t__,int ) ;

void kempld_write32(struct kempld_device_data *pld, u8 index, u32 data)
{
 kempld_write16(pld, index, (u16)data);
 kempld_write16(pld, index + 2, (u16)(data >> 16));
}
