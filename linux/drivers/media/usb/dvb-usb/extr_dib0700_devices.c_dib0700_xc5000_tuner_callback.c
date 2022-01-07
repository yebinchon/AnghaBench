
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_adapter {int dev; } ;


 int EINVAL ;
 int GPIO1 ;
 int GPIO_OUT ;
 int XC5000_TUNER_RESET ;
 int dib0700_set_gpio (int ,int ,int ,int) ;
 int err (char*,int) ;
 int msleep (int) ;

__attribute__((used)) static int dib0700_xc5000_tuner_callback(void *priv, int component,
      int command, int arg)
{
 struct dvb_usb_adapter *adap = priv;

 if (command == XC5000_TUNER_RESET) {

  dib0700_set_gpio(adap->dev, GPIO1, GPIO_OUT, 0);
  msleep(10);
  dib0700_set_gpio(adap->dev, GPIO1, GPIO_OUT, 1);
  msleep(10);
 } else {
  err("xc5000: unknown tuner callback command: %d\n", command);
  return -EINVAL;
 }

 return 0;
}
