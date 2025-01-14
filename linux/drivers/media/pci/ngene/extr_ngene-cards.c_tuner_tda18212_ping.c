
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int tda_id ;
struct ngene_channel {TYPE_4__* fe; TYPE_2__* dev; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int (* i2c_gate_ctrl ) (TYPE_4__*,int) ;} ;
struct TYPE_9__ {TYPE_3__ ops; } ;
struct TYPE_7__ {TYPE_1__* pci_dev; } ;
struct TYPE_6__ {struct device dev; } ;


 int dev_dbg (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 scalar_t__ i2c_read_regs (struct i2c_adapter*,unsigned short,int,int*,int) ;
 int stub1 (TYPE_4__*,int) ;
 int stub2 (TYPE_4__*,int) ;

__attribute__((used)) static int tuner_tda18212_ping(struct ngene_channel *chan,
          struct i2c_adapter *i2c,
          unsigned short adr)
{
 struct device *pdev = &chan->dev->pci_dev->dev;
 u8 tda_id[2];
 u8 subaddr = 0x00;

 dev_dbg(pdev, "stv0367-tda18212 tuner ping\n");
 if (chan->fe->ops.i2c_gate_ctrl)
  chan->fe->ops.i2c_gate_ctrl(chan->fe, 1);

 if (i2c_read_regs(i2c, adr, subaddr, tda_id, sizeof(tda_id)) < 0)
  dev_dbg(pdev, "tda18212 ping 1 fail\n");
 if (i2c_read_regs(i2c, adr, subaddr, tda_id, sizeof(tda_id)) < 0)
  dev_warn(pdev, "tda18212 ping failed, expect problems\n");

 if (chan->fe->ops.i2c_gate_ctrl)
  chan->fe->ops.i2c_gate_ctrl(chan->fe, 0);

 return 0;
}
