
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_7__ {int timer; TYPE_1__* lmc_media; scalar_t__ lmc_ok; } ;
typedef TYPE_2__ lmc_softc_t ;
struct TYPE_6__ {int (* set_link_status ) (TYPE_2__*,int ) ;} ;


 int del_timer (int *) ;
 TYPE_2__* dev_to_sc (struct net_device*) ;
 int lmc_ifdown (struct net_device*) ;
 int lmc_proto_close (TYPE_2__*) ;
 int lmc_trace (struct net_device*,char*) ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static int lmc_close(struct net_device *dev)
{

    lmc_softc_t *sc = dev_to_sc(dev);

    lmc_trace(dev, "lmc_close in");

    sc->lmc_ok = 0;
    sc->lmc_media->set_link_status (sc, 0);
    del_timer (&sc->timer);
    lmc_proto_close(sc);
    lmc_ifdown (dev);

    lmc_trace(dev, "lmc_close out");

    return 0;
}
