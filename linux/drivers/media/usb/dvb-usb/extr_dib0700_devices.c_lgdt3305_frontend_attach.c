
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* fe_adap; TYPE_2__* dev; } ;
struct dib0700_state {int fw_use_new_i2c_api; int disable_streaming_master_mode; } ;
struct TYPE_4__ {int i2c_adap; struct dib0700_state* priv; } ;
struct TYPE_3__ {int * fe; } ;


 int ENODEV ;
 int GPIO10 ;
 int GPIO6 ;
 int GPIO_OUT ;
 int dib0700_set_gpio (TYPE_2__*,int ,int ,int) ;
 int * dvb_attach (int ,int *,int *) ;
 int hcw_lgdt3305_config ;
 int lgdt3305_attach ;
 int msleep (int) ;

__attribute__((used)) static int lgdt3305_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct dib0700_state *st = adap->dev->priv;


 st->fw_use_new_i2c_api = 1;

 st->disable_streaming_master_mode = 1;


 dib0700_set_gpio(adap->dev, GPIO6, GPIO_OUT, 0);
 msleep(30);
 dib0700_set_gpio(adap->dev, GPIO6, GPIO_OUT, 1);
 msleep(30);


 dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 1);
 msleep(30);
 dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 0);
 msleep(30);
 dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 1);
 msleep(30);

 adap->fe_adap[0].fe = dvb_attach(lgdt3305_attach,
         &hcw_lgdt3305_config,
         &adap->dev->i2c_adap);

 return adap->fe_adap[0].fe == ((void*)0) ? -ENODEV : 0;
}
