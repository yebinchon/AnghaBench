
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbmacdma {int dummy; } ;
struct sbmac_softc {int dummy; } ;


 int SBMAC_MAX_RXDESCR ;
 scalar_t__ sbdma_add_rcvbuffer (struct sbmac_softc*,struct sbmacdma*,int *) ;

__attribute__((used)) static void sbdma_fillring(struct sbmac_softc *sc, struct sbmacdma *d)
{
 int idx;

 for (idx = 0; idx < SBMAC_MAX_RXDESCR - 1; idx++) {
  if (sbdma_add_rcvbuffer(sc, d, ((void*)0)) != 0)
   break;
 }
}
