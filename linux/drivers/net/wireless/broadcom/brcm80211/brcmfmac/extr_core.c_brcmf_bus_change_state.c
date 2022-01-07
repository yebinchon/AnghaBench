
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct brcmf_pub {TYPE_1__** iflist; } ;
struct brcmf_bus {int state; struct brcmf_pub* drvr; } ;
typedef enum brcmf_bus_state { ____Placeholder_brcmf_bus_state } brcmf_bus_state ;
struct TYPE_2__ {struct net_device* ndev; } ;


 int BRCMF_BUS_UP ;
 int BRCMF_MAX_IFS ;
 int INFO ;
 int TRACE ;
 int brcmf_dbg (int ,char*,...) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

void brcmf_bus_change_state(struct brcmf_bus *bus, enum brcmf_bus_state state)
{
 struct brcmf_pub *drvr = bus->drvr;
 struct net_device *ndev;
 int ifidx;

 brcmf_dbg(TRACE, "%d -> %d\n", bus->state, state);

 if (!drvr) {
  brcmf_dbg(INFO, "ignoring transition, bus not attached yet\n");
  return;
 }

 bus->state = state;

 if (state == BRCMF_BUS_UP) {
  for (ifidx = 0; ifidx < BRCMF_MAX_IFS; ifidx++) {
   if ((drvr->iflist[ifidx]) &&
       (drvr->iflist[ifidx]->ndev)) {
    ndev = drvr->iflist[ifidx]->ndev;
    if (netif_queue_stopped(ndev))
     netif_wake_queue(ndev);
   }
  }
 }
}
