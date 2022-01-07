
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_adapter {size_t id; TYPE_2__* dev; TYPE_1__* fe_adap; } ;
struct dib0700_state {int* mt2060_if1; } ;
struct TYPE_4__ {int i2c_adap; struct dib0700_state* priv; } ;
struct TYPE_3__ {int * fe; } ;


 int DEFAULT_DIB3000P_I2C_ADDRESS ;
 int ENODEV ;
 int GPIO0 ;
 int GPIO10 ;
 int GPIO6 ;
 int GPIO_OUT ;
 int * bristol_dib3000mc_config ;
 int dib0700_set_gpio (TYPE_2__*,int ,int ,int) ;
 int dib3000mc_attach ;
 scalar_t__ dib3000mc_i2c_enumeration (int *,int,int ,int *) ;
 int * dvb_attach (int ,int *,int,int *) ;
 scalar_t__ force_lna_activation ;
 int msleep (int) ;

__attribute__((used)) static int bristol_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct dib0700_state *st = adap->dev->priv;
 if (adap->id == 0) {
  dib0700_set_gpio(adap->dev, GPIO6, GPIO_OUT, 0); msleep(10);
  dib0700_set_gpio(adap->dev, GPIO6, GPIO_OUT, 1); msleep(10);
  dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 0); msleep(10);
  dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 1); msleep(10);

  if (force_lna_activation)
   dib0700_set_gpio(adap->dev, GPIO0, GPIO_OUT, 1);
  else
   dib0700_set_gpio(adap->dev, GPIO0, GPIO_OUT, 0);

  if (dib3000mc_i2c_enumeration(&adap->dev->i2c_adap, 2, DEFAULT_DIB3000P_I2C_ADDRESS, bristol_dib3000mc_config) != 0) {
   dib0700_set_gpio(adap->dev, GPIO6, GPIO_OUT, 0); msleep(10);
   return -ENODEV;
  }
 }
 st->mt2060_if1[adap->id] = 1220;
 return (adap->fe_adap[0].fe = dvb_attach(dib3000mc_attach, &adap->dev->i2c_adap,
  (10 + adap->id) << 1, &bristol_dib3000mc_config[adap->id])) == ((void*)0) ? -ENODEV : 0;
}
