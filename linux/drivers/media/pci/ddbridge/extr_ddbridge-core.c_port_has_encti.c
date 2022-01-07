
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct ddb_port {TYPE_2__* i2c; TYPE_1__* dev; } ;
struct TYPE_4__ {int adap; } ;
struct TYPE_3__ {struct device* dev; } ;


 int dev_info (struct device*,char*,int ) ;
 int i2c_read_reg (int *,int,int ,int *) ;

__attribute__((used)) static int port_has_encti(struct ddb_port *port)
{
 struct device *dev = port->dev->dev;
 u8 val;
 int ret = i2c_read_reg(&port->i2c->adap, 0x20, 0, &val);

 if (!ret)
  dev_info(dev, "[0x20]=0x%02x\n", val);
 return ret ? 0 : 1;
}
