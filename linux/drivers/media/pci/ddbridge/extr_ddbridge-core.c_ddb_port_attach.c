
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ddb_port {int class; int nr; TYPE_2__* dev; scalar_t__ output; TYPE_1__* dvb; TYPE_3__** input; } ;
struct TYPE_7__ {struct TYPE_7__* redi; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int dev; int adap; } ;





 int DVB_DEVICE_SEC ;
 int ci_bitrate ;
 int ddb_ci_attach (struct ddb_port*,int ) ;
 int dev_err (int ,char*,int ) ;
 int dvb_input_attach (TYPE_3__*) ;
 int dvb_input_detach (TYPE_3__*) ;
 int dvb_register_device (int ,int *,int *,void*,int ,int ) ;
 int dvbdev_ci ;

__attribute__((used)) static int ddb_port_attach(struct ddb_port *port)
{
 int ret = 0;

 switch (port->class) {
 case 128:
  ret = dvb_input_attach(port->input[0]);
  if (ret < 0)
   break;
  ret = dvb_input_attach(port->input[1]);
  if (ret < 0) {
   dvb_input_detach(port->input[0]);
   break;
  }
  port->input[0]->redi = port->input[0];
  port->input[1]->redi = port->input[1];
  break;
 case 130:
  ret = ddb_ci_attach(port, ci_bitrate);
  if (ret < 0)
   break;

 case 129:
  ret = dvb_register_device(port->dvb[0].adap,
       &port->dvb[0].dev,
       &dvbdev_ci, (void *)port->output,
       DVB_DEVICE_SEC, 0);
  break;
 default:
  break;
 }
 if (ret < 0)
  dev_err(port->dev->dev, "port_attach on port %d failed\n",
   port->nr);
 return ret;
}
