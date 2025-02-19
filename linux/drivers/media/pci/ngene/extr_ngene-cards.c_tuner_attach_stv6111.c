
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ngene_channel {int number; int fe; TYPE_2__* dev; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pci_dev; } ;
struct TYPE_3__ {struct device dev; } ;


 int ENODEV ;
 int dev_err (struct device*,char*) ;
 struct dvb_frontend* dvb_attach (int ,int ,struct i2c_adapter*,int) ;
 struct i2c_adapter* i2c_adapter_from_chan (struct ngene_channel*) ;
 int stv6111_attach ;

__attribute__((used)) static int tuner_attach_stv6111(struct ngene_channel *chan)
{
 struct device *pdev = &chan->dev->pci_dev->dev;
 struct i2c_adapter *i2c = i2c_adapter_from_chan(chan);
 struct dvb_frontend *fe;
 u8 adr = 4 + ((chan->number & 1) ? 0x63 : 0x60);

 fe = dvb_attach(stv6111_attach, chan->fe, i2c, adr);
 if (!fe) {
  fe = dvb_attach(stv6111_attach, chan->fe, i2c, adr & ~4);
  if (!fe) {
   dev_err(pdev, "stv6111_attach() failed!\n");
   return -ENODEV;
  }
 }
 return 0;
}
