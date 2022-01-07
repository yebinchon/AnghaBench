
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ngene_channel {int * fe; int i2c_adapter; TYPE_2__* dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pci_dev; } ;
struct TYPE_3__ {struct device dev; } ;


 int ENODEV ;
 int aver_m780 ;
 int dev_err (struct device*,char*) ;
 int * dvb_attach (int ,int *,int,int *,...) ;
 int lgdt330x_attach ;
 int m780_tunerconfig ;
 int mt2131_attach ;

__attribute__((used)) static int demod_attach_lg330x(struct ngene_channel *chan)
{
 struct device *pdev = &chan->dev->pci_dev->dev;

 chan->fe = dvb_attach(lgdt330x_attach, &aver_m780,
         0xb2 >> 1, &chan->i2c_adapter);
 if (chan->fe == ((void*)0)) {
  dev_err(pdev, "No LGDT330x found!\n");
  return -ENODEV;
 }

 dvb_attach(mt2131_attach, chan->fe, &chan->i2c_adapter,
     &m780_tunerconfig, 0);

 return (chan->fe) ? 0 : -ENODEV;
}
