
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifreq {int dummy; } ;
struct TYPE_3__ {scalar_t__ if_type; int lmc_device; } ;
typedef TYPE_1__ lmc_softc_t ;


 int EOPNOTSUPP ;
 scalar_t__ LMC_PPP ;
 int hdlc_ioctl (int ,struct ifreq*,int) ;
 int lmc_trace (int ,char*) ;

int lmc_proto_ioctl(lmc_softc_t *sc, struct ifreq *ifr, int cmd)
{
 lmc_trace(sc->lmc_device, "lmc_proto_ioctl");
 if (sc->if_type == LMC_PPP)
  return hdlc_ioctl(sc->lmc_device, ifr, cmd);
 return -EOPNOTSUPP;
}
