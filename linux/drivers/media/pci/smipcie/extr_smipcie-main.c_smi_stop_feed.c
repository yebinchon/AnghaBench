
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_port {int users; int DMA_MANAGEMENT; int tasklet; struct smi_dev* dev; } ;
struct smi_dev {int dummy; } ;
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct dvb_demux {struct smi_port* priv; } ;


 int smi_clear (int ,int) ;
 int smi_port_disableInterrupt (struct smi_port*) ;
 int tasklet_disable (int *) ;

__attribute__((used)) static int smi_stop_feed(struct dvb_demux_feed *dvbdmxfeed)
{
 struct dvb_demux *dvbdmx = dvbdmxfeed->demux;
 struct smi_port *port = dvbdmx->priv;
 struct smi_dev *dev = port->dev;

 if (--port->users)
  return port->users;

 tasklet_disable(&port->tasklet);
 smi_port_disableInterrupt(port);
 smi_clear(port->DMA_MANAGEMENT, 0x30003);
 return 0;
}
