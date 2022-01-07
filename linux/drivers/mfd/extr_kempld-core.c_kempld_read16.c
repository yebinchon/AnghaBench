
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct kempld_device_data {int dummy; } ;


 int kempld_read8 (struct kempld_device_data*,scalar_t__) ;

u16 kempld_read16(struct kempld_device_data *pld, u8 index)
{
 return kempld_read8(pld, index) | kempld_read8(pld, index + 1) << 8;
}
