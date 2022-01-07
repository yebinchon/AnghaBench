
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;


 int GPIO10 ;
 int GPIO4 ;
 int GPIO6 ;
 int GPIO7 ;
 int GPIO9 ;
 int GPIO_OUT ;
 int dib0700_ctrl_clock (struct dvb_usb_device*,int,int) ;
 int dib0700_set_gpio (struct dvb_usb_device*,int ,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void stk7070pd_init(struct dvb_usb_device *dev)
{
 dib0700_set_gpio(dev, GPIO6, GPIO_OUT, 1);
 msleep(10);
 dib0700_set_gpio(dev, GPIO9, GPIO_OUT, 1);
 dib0700_set_gpio(dev, GPIO4, GPIO_OUT, 1);
 dib0700_set_gpio(dev, GPIO7, GPIO_OUT, 1);
 dib0700_set_gpio(dev, GPIO10, GPIO_OUT, 0);

 dib0700_ctrl_clock(dev, 72, 1);

 msleep(10);
 dib0700_set_gpio(dev, GPIO10, GPIO_OUT, 1);
}
