
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend {int dummy; } ;
struct device {int dummy; } ;
struct ddb_input {int nr; TYPE_2__* port; } ;
struct ddb_dvb {int fe; } ;
struct TYPE_6__ {struct i2c_adapter adap; } ;
struct TYPE_5__ {TYPE_1__* dev; struct ddb_dvb* dvb; TYPE_3__* i2c; } ;
struct TYPE_4__ {struct device* dev; } ;


 int ENODEV ;
 int dev_err (struct device*,char*,int) ;
 struct dvb_frontend* dvb_attach (int ,int ,struct i2c_adapter*,int) ;
 int stv6111_attach ;

__attribute__((used)) static int tuner_attach_stv6111(struct ddb_input *input, int type)
{
 struct i2c_adapter *i2c = &input->port->i2c->adap;
 struct ddb_dvb *dvb = &input->port->dvb[input->nr & 1];
 struct device *dev = input->port->dev->dev;
 struct dvb_frontend *fe;
 u8 adr = (type ? 0 : 4) + ((input->nr & 1) ? 0x63 : 0x60);

 fe = dvb_attach(stv6111_attach, dvb->fe, i2c, adr);
 if (!fe) {
  fe = dvb_attach(stv6111_attach, dvb->fe, i2c, adr & ~4);
  if (!fe) {
   dev_err(dev, "No STV6111 found at 0x%02x!\n", adr);
   return -ENODEV;
  }
 }
 return 0;
}
