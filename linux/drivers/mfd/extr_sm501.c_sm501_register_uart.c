
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501_devdata {int dev; } ;
struct platform_device {int id; int dev; } ;
struct plat_serial8250_port {int dummy; } ;


 int ENOMEM ;
 int PLAT8250_DEV_SM501 ;
 int SM501_GATE_UART0 ;
 int SM501_GATE_UART1 ;
 int SM501_GPIO63_32_CONTROL ;
 int SM501_IRQ_MASK ;
 int SM501_USE_UART0 ;
 int SM501_USE_UART1 ;
 struct plat_serial8250_port* dev_get_platdata (int *) ;
 struct platform_device* sm501_create_subdev (struct sm501_devdata*,char*,int ,int) ;
 int sm501_modify_reg (int ,int ,int,int ) ;
 int sm501_register_device (struct sm501_devdata*,struct platform_device*) ;
 int sm501_setup_uart_data (struct sm501_devdata*,int ,int) ;
 int sm501_unit_power (int ,int ,int) ;

__attribute__((used)) static int sm501_register_uart(struct sm501_devdata *sm, int devices)
{
 struct platform_device *pdev;
 struct plat_serial8250_port *uart_data;

 pdev = sm501_create_subdev(sm, "serial8250", 0,
       sizeof(struct plat_serial8250_port) * 3);
 if (!pdev)
  return -ENOMEM;

 uart_data = dev_get_platdata(&pdev->dev);

 if (devices & SM501_USE_UART0) {
  sm501_setup_uart_data(sm, uart_data++, 0x30000);
  sm501_unit_power(sm->dev, SM501_GATE_UART0, 1);
  sm501_modify_reg(sm->dev, SM501_IRQ_MASK, 1 << 12, 0);
  sm501_modify_reg(sm->dev, SM501_GPIO63_32_CONTROL, 0x01e0, 0);
 }
 if (devices & SM501_USE_UART1) {
  sm501_setup_uart_data(sm, uart_data++, 0x30020);
  sm501_unit_power(sm->dev, SM501_GATE_UART1, 1);
  sm501_modify_reg(sm->dev, SM501_IRQ_MASK, 1 << 13, 0);
  sm501_modify_reg(sm->dev, SM501_GPIO63_32_CONTROL, 0x1e00, 0);
 }

 pdev->id = PLAT8250_DEV_SM501;

 return sm501_register_device(sm, pdev);
}
