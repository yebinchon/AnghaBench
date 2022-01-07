
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int if_type; int lmc_device; } ;
typedef TYPE_1__ lmc_softc_t ;





 int lmc_trace (int ,char*) ;
 int netif_rx (struct sk_buff*) ;

void lmc_proto_netif(lmc_softc_t *sc, struct sk_buff *skb)
{
    lmc_trace(sc->lmc_device, "lmc_proto_netif in");
    switch(sc->if_type){
    case 129:
    case 130:
    default:
        netif_rx(skb);
        break;
    case 128:
        break;
    }
    lmc_trace(sc->lmc_device, "lmc_proto_netif out");
}
