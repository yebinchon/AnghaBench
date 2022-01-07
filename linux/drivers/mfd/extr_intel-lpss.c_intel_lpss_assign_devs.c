
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfd_cell {int dummy; } ;
struct intel_lpss {unsigned int caps; unsigned int type; int cell; int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;



 unsigned int LPSS_PRIV_CAPS_TYPE_MASK ;
 unsigned int LPSS_PRIV_CAPS_TYPE_SHIFT ;
 int devm_kmemdup (int ,struct mfd_cell const*,int,int ) ;
 struct mfd_cell intel_lpss_i2c_cell ;
 struct mfd_cell intel_lpss_spi_cell ;
 struct mfd_cell intel_lpss_uart_cell ;

__attribute__((used)) static int intel_lpss_assign_devs(struct intel_lpss *lpss)
{
 const struct mfd_cell *cell;
 unsigned int type;

 type = lpss->caps & LPSS_PRIV_CAPS_TYPE_MASK;
 type >>= LPSS_PRIV_CAPS_TYPE_SHIFT;

 switch (type) {
 case 130:
  cell = &intel_lpss_i2c_cell;
  break;
 case 128:
  cell = &intel_lpss_uart_cell;
  break;
 case 129:
  cell = &intel_lpss_spi_cell;
  break;
 default:
  return -ENODEV;
 }

 lpss->cell = devm_kmemdup(lpss->dev, cell, sizeof(*cell), GFP_KERNEL);
 if (!lpss->cell)
  return -ENOMEM;

 lpss->type = type;

 return 0;
}
