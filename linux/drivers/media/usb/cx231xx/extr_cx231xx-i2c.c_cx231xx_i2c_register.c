
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parent; } ;
struct TYPE_6__ {struct cx231xx_i2c* algo_data; int name; TYPE_1__ dev; } ;
struct cx231xx_i2c {int nr; scalar_t__ i2c_rc; TYPE_2__ i2c_adap; struct cx231xx* dev; } ;
struct cx231xx {char* name; int dev; int v4l2_dev; int cx231xx_send_usb_command; } ;


 int BUG_ON (int) ;
 TYPE_2__ cx231xx_adap_template ;
 int dev_warn (int ,char*,int) ;
 scalar_t__ i2c_add_adapter (TYPE_2__*) ;
 int i2c_set_adapdata (TYPE_2__*,int *) ;
 int snprintf (int ,int,char*,char*,int) ;

int cx231xx_i2c_register(struct cx231xx_i2c *bus)
{
 struct cx231xx *dev = bus->dev;

 BUG_ON(!dev->cx231xx_send_usb_command);

 bus->i2c_adap = cx231xx_adap_template;
 bus->i2c_adap.dev.parent = dev->dev;

 snprintf(bus->i2c_adap.name, sizeof(bus->i2c_adap.name), "%s-%d", bus->dev->name, bus->nr);

 bus->i2c_adap.algo_data = bus;
 i2c_set_adapdata(&bus->i2c_adap, &dev->v4l2_dev);
 bus->i2c_rc = i2c_add_adapter(&bus->i2c_adap);

 if (0 != bus->i2c_rc)
  dev_warn(dev->dev,
    "i2c bus %d register FAILED\n", bus->nr);

 return bus->i2c_rc;
}
