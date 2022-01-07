
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_dev {int name; } ;


 int GP0_IO ;
 int MC417_RWD ;
 int cx_clear (int ,int) ;
 scalar_t__ encoder_on_portb (struct cx23885_dev*) ;
 scalar_t__ encoder_on_portc (struct cx23885_dev*) ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ) ;

void cx23885_gpio_clear(struct cx23885_dev *dev, u32 mask)
{
 if (mask & 0x00000007)
  cx_clear(GP0_IO, mask & 0x7);

 if (mask & 0x0007fff8) {
  if (encoder_on_portb(dev) || encoder_on_portc(dev))
   pr_err("%s: Clearing GPIO moving on encoder ports\n",
    dev->name);
  cx_clear(MC417_RWD, (mask & 0x7fff8) >> 3);
 }


 if (mask & 0x00f80000)
  pr_info("%s: Unsupported\n", dev->name);
}
