
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfd_cell {int dummy; } ;
struct kempld_device_data {int feature_mask; int dev; } ;


 int KEMPLD_FEATURE_BIT_GPIO ;
 int KEMPLD_FEATURE_BIT_I2C ;
 int KEMPLD_FEATURE_BIT_WATCHDOG ;
 int KEMPLD_FEATURE_MASK_UART ;
 size_t KEMPLD_GPIO ;
 size_t KEMPLD_I2C ;
 int KEMPLD_MAX_DEVS ;
 size_t KEMPLD_UART ;
 size_t KEMPLD_WDT ;
 struct mfd_cell* kempld_devs ;
 int mfd_add_devices (int ,int,struct mfd_cell*,int,int *,int ,int *) ;

__attribute__((used)) static int kempld_register_cells_generic(struct kempld_device_data *pld)
{
 struct mfd_cell devs[KEMPLD_MAX_DEVS];
 int i = 0;

 if (pld->feature_mask & KEMPLD_FEATURE_BIT_I2C)
  devs[i++] = kempld_devs[KEMPLD_I2C];

 if (pld->feature_mask & KEMPLD_FEATURE_BIT_WATCHDOG)
  devs[i++] = kempld_devs[KEMPLD_WDT];

 if (pld->feature_mask & KEMPLD_FEATURE_BIT_GPIO)
  devs[i++] = kempld_devs[KEMPLD_GPIO];

 if (pld->feature_mask & KEMPLD_FEATURE_MASK_UART)
  devs[i++] = kempld_devs[KEMPLD_UART];

 return mfd_add_devices(pld->dev, -1, devs, i, ((void*)0), 0, ((void*)0));
}
