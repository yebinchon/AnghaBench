
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mantis_pci {int feeds; int tasklet; } ;
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct TYPE_2__ {int frontend; } ;
struct dvb_demux {TYPE_1__ dmx; struct mantis_pci* priv; } ;


 int EINVAL ;
 int MANTIS_DEBUG ;
 int dprintk (int ,int,char*,...) ;
 int mantis_dma_start (struct mantis_pci*) ;
 int tasklet_enable (int *) ;

__attribute__((used)) static int mantis_dvb_start_feed(struct dvb_demux_feed *dvbdmxfeed)
{
 struct dvb_demux *dvbdmx = dvbdmxfeed->demux;
 struct mantis_pci *mantis = dvbdmx->priv;

 dprintk(MANTIS_DEBUG, 1, "Mantis DVB Start feed");
 if (!dvbdmx->dmx.frontend) {
  dprintk(MANTIS_DEBUG, 1, "no frontend ?");
  return -EINVAL;
 }

 mantis->feeds++;
 dprintk(MANTIS_DEBUG, 1, "mantis start feed, feeds=%d", mantis->feeds);

 if (mantis->feeds == 1) {
  dprintk(MANTIS_DEBUG, 1, "mantis start feed & dma");
  mantis_dma_start(mantis);
  tasklet_enable(&mantis->tasklet);
 }

 return mantis->feeds;
}
