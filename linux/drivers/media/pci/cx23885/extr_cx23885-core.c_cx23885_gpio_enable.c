
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_dev {int name; } ;


 int GP0_IO ;
 int MC417_OEN ;
 int cx_clear (int ,int) ;
 int cx_set (int ,int) ;
 scalar_t__ encoder_on_portb (struct cx23885_dev*) ;
 scalar_t__ encoder_on_portc (struct cx23885_dev*) ;
 int pr_err (char*,int ) ;

void cx23885_gpio_enable(struct cx23885_dev *dev, u32 mask, int asoutput)
{
 if ((mask & 0x00000007) && asoutput)
  cx_set(GP0_IO, (mask & 0x7) << 16);
 else if ((mask & 0x00000007) && !asoutput)
  cx_clear(GP0_IO, (mask & 0x7) << 16);

 if (mask & 0x0007fff8) {
  if (encoder_on_portb(dev) || encoder_on_portc(dev))
   pr_err("%s: Enabling GPIO on encoder ports\n",
    dev->name);
 }


 if ((mask & 0x0007fff8) && asoutput)
  cx_clear(MC417_OEN, (mask & 0x7fff8) >> 3);

 else if ((mask & 0x0007fff8) && !asoutput)
  cx_set(MC417_OEN, (mask & 0x7fff8) >> 3);


}
