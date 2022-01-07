
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int parent; } ;
struct TYPE_7__ {struct stk1160* algo_data; int name; TYPE_1__ dev; } ;
struct TYPE_8__ {TYPE_2__* adapter; } ;
struct stk1160 {TYPE_2__ i2c_adap; TYPE_4__ i2c_client; int v4l2_dev; int dev; } ;


 scalar_t__ STK1160_ASIC ;
 scalar_t__ STK1160_SICTL_CD ;
 TYPE_2__ adap_template ;
 TYPE_4__ client_template ;
 int i2c_add_adapter (TYPE_2__*) ;
 int i2c_set_adapdata (TYPE_2__*,int *) ;
 int stk1160_err (char*,int) ;
 int stk1160_write_reg (struct stk1160*,scalar_t__,int) ;
 int strscpy (int ,char*,int) ;

int stk1160_i2c_register(struct stk1160 *dev)
{
 int rc;

 dev->i2c_adap = adap_template;
 dev->i2c_adap.dev.parent = dev->dev;
 strscpy(dev->i2c_adap.name, "stk1160", sizeof(dev->i2c_adap.name));
 dev->i2c_adap.algo_data = dev;

 i2c_set_adapdata(&dev->i2c_adap, &dev->v4l2_dev);

 rc = i2c_add_adapter(&dev->i2c_adap);
 if (rc < 0) {
  stk1160_err("cannot add i2c adapter (%d)\n", rc);
  return rc;
 }

 dev->i2c_client = client_template;
 dev->i2c_client.adapter = &dev->i2c_adap;


 stk1160_write_reg(dev, STK1160_SICTL_CD, 0x0f);


 stk1160_write_reg(dev, STK1160_ASIC + 3, 0x00);

 return 0;
}
