
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smi_port {int users; int tasklet; int DMA_MANAGEMENT; struct smi_dev* dev; } ;
struct smi_dev {int dummy; } ;
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct dvb_demux {struct smi_port* priv; } ;


 int smi_config_DMA (struct smi_port*) ;
 int smi_port_clearInterrupt (struct smi_port*) ;
 int smi_port_enableInterrupt (struct smi_port*) ;
 int smi_write (int ,int ) ;
 int tasklet_enable (int *) ;

__attribute__((used)) static int smi_start_feed(struct dvb_demux_feed *dvbdmxfeed)
{
 struct dvb_demux *dvbdmx = dvbdmxfeed->demux;
 struct smi_port *port = dvbdmx->priv;
 struct smi_dev *dev = port->dev;
 u32 dmaManagement;

 if (port->users++ == 0) {
  dmaManagement = smi_config_DMA(port);
  smi_port_clearInterrupt(port);
  smi_port_enableInterrupt(port);
  smi_write(port->DMA_MANAGEMENT, dmaManagement);
  tasklet_enable(&port->tasklet);
 }
 return port->users;
}
