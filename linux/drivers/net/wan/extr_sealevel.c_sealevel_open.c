
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct slvl_device {int channel; TYPE_1__* chan; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int rx_function; } ;


 struct slvl_device* dev_to_chan (struct net_device*) ;
 int hdlc_open (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int sealevel_input ;
 int z8530_sync_close (struct net_device*,TYPE_1__*) ;
 int z8530_sync_dma_close (struct net_device*,TYPE_1__*) ;
 int z8530_sync_dma_open (struct net_device*,TYPE_1__*) ;
 int z8530_sync_open (struct net_device*,TYPE_1__*) ;

__attribute__((used)) static int sealevel_open(struct net_device *d)
{
 struct slvl_device *slvl = dev_to_chan(d);
 int err = -1;
 int unit = slvl->channel;





 switch (unit) {
  case 0:
   err = z8530_sync_dma_open(d, slvl->chan);
   break;
  case 1:
   err = z8530_sync_open(d, slvl->chan);
   break;
 }

 if (err)
  return err;

 err = hdlc_open(d);
 if (err) {
  switch (unit) {
   case 0:
    z8530_sync_dma_close(d, slvl->chan);
    break;
   case 1:
    z8530_sync_close(d, slvl->chan);
    break;
  }
  return err;
 }

 slvl->chan->rx_function = sealevel_input;




 netif_start_queue(d);
 return 0;
}
