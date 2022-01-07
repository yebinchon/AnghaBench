
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dev; } ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct TYPE_9__ {TYPE_2__* adapter; int name; } ;
struct TYPE_7__ {int * parent; } ;
struct TYPE_8__ {TYPE_6__* algo_data; int owner; int name; TYPE_1__ dev; } ;
struct TYPE_10__ {int udelay; struct cx88_core* data; } ;
struct cx88_core {char* name; scalar_t__ i2c_rc; int boardnr; TYPE_5__ i2c_client; TYPE_2__ i2c_adap; TYPE_6__ i2c_algo; int v4l2_dev; } ;





 int I2C_NAME_SIZE ;
 int THIS_MODULE ;
 int cx8800_bit_setscl (struct cx88_core*,int) ;
 int cx8800_bit_setsda (struct cx88_core*,int) ;
 TYPE_6__ cx8800_i2c_algo_template ;
 int do_i2c_scan (char*,TYPE_5__*) ;
 int dprintk (int,char*) ;
 scalar_t__ i2c_bit_add_bus (TYPE_2__*) ;
 scalar_t__ i2c_scan ;
 int i2c_set_adapdata (TYPE_2__*,int *) ;
 int i2c_transfer (TYPE_2__*,struct i2c_msg*,int) ;
 int i2c_udelay ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int strscpy (int ,char*,int) ;

int cx88_i2c_init(struct cx88_core *core, struct pci_dev *pci)
{

 if (i2c_udelay < 5)
  i2c_udelay = 5;

 core->i2c_algo = cx8800_i2c_algo_template;

 core->i2c_adap.dev.parent = &pci->dev;
 strscpy(core->i2c_adap.name, core->name, sizeof(core->i2c_adap.name));
 core->i2c_adap.owner = THIS_MODULE;
 core->i2c_algo.udelay = i2c_udelay;
 core->i2c_algo.data = core;
 i2c_set_adapdata(&core->i2c_adap, &core->v4l2_dev);
 core->i2c_adap.algo_data = &core->i2c_algo;
 core->i2c_client.adapter = &core->i2c_adap;
 strscpy(core->i2c_client.name, "cx88xx internal", I2C_NAME_SIZE);

 cx8800_bit_setscl(core, 1);
 cx8800_bit_setsda(core, 1);

 core->i2c_rc = i2c_bit_add_bus(&core->i2c_adap);
 if (core->i2c_rc == 0) {
  static u8 tuner_data[] = {
   0x0b, 0xdc, 0x86, 0x52 };
  static struct i2c_msg tuner_msg = {
   .flags = 0,
   .addr = 0xc2 >> 1,
   .buf = tuner_data,
   .len = 4
  };

  dprintk(1, "i2c register ok\n");
  switch (core->boardnr) {
  case 130:
  case 129:
  case 128:
   pr_info("i2c init: enabling analog demod on HVR1300/3000/4000 tuner\n");
   i2c_transfer(core->i2c_client.adapter, &tuner_msg, 1);
   break;
  default:
   break;
  }
  if (i2c_scan)
   do_i2c_scan(core->name, &core->i2c_client);
 } else
  pr_err("i2c register FAILED\n");

 return core->i2c_rc;
}
