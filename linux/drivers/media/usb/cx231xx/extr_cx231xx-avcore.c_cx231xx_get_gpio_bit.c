
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cx231xx {int dummy; } ;
typedef int __le32 ;


 int cx231xx_send_gpio_cmd (struct cx231xx*,int ,int *,int,int ,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int cx231xx_get_gpio_bit(struct cx231xx *dev, u32 gpio_bit, u32 *gpio_val)
{
 __le32 tmp;
 int status = 0;

 status = cx231xx_send_gpio_cmd(dev, gpio_bit, (u8 *)&tmp, 4, 0, 1);
 *gpio_val = le32_to_cpu(tmp);

 return status;
}
