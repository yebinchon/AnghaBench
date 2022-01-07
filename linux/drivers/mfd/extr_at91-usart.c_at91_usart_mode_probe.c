
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dev; } ;
struct mfd_cell {int dummy; } ;




 int EINVAL ;
 int PLATFORM_DEVID_AUTO ;
 struct mfd_cell at91_usart_serial_subdev ;
 struct mfd_cell at91_usart_spi_subdev ;
 int dev_err (int *,char*,int) ;
 int device_property_read_u32 (int *,char*,int*) ;
 int devm_mfd_add_devices (int *,int ,struct mfd_cell const*,int,int *,int ,int *) ;

__attribute__((used)) static int at91_usart_mode_probe(struct platform_device *pdev)
{
 const struct mfd_cell *cell;
 u32 opmode = 129;

 device_property_read_u32(&pdev->dev, "atmel,usart-mode", &opmode);

 switch (opmode) {
 case 128:
  cell = &at91_usart_spi_subdev;
  break;
 case 129:
  cell = &at91_usart_serial_subdev;
  break;
 default:
  dev_err(&pdev->dev, "atmel,usart-mode has an invalid value %u\n",
   opmode);
  return -EINVAL;
 }

 return devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_AUTO, cell, 1,
         ((void*)0), 0, ((void*)0));
}
