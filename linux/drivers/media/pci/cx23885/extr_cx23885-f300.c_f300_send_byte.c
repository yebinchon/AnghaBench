
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx23885_dev {int dummy; } ;


 int F300_CLK ;
 int F300_DATA ;
 int f300_set_line (struct cx23885_dev*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void f300_send_byte(struct cx23885_dev *dev, u8 dta)
{
 u8 i;

 for (i = 0; i < 8; i++) {
  f300_set_line(dev, F300_CLK, 0);
  udelay(30);
  f300_set_line(dev, F300_DATA, (dta & 0x80) >> 7);
  udelay(30);
  dta <<= 1;
  f300_set_line(dev, F300_CLK, 1);
  udelay(30);
 }
}
