
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbmac_softc {scalar_t__ sbm_state; int sbm_txdma; int sbm_rxdma; int sbm_macenable; int sbm_imr; int sbm_rxfilter; } ;


 int __raw_writeq (int ,int ) ;
 int sbdma_channel_stop (int *) ;
 int sbdma_emptyring (int *) ;
 scalar_t__ sbmac_state_off ;

__attribute__((used)) static void sbmac_channel_stop(struct sbmac_softc *s)
{


 if (s->sbm_state == sbmac_state_off)
  return;



 __raw_writeq(0, s->sbm_rxfilter);
 __raw_writeq(0, s->sbm_imr);







 __raw_writeq(0, s->sbm_macenable);



 s->sbm_state = sbmac_state_off;





 sbdma_channel_stop(&(s->sbm_rxdma));
 sbdma_channel_stop(&(s->sbm_txdma));



 sbdma_emptyring(&(s->sbm_rxdma));
 sbdma_emptyring(&(s->sbm_txdma));

}
