
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbmac_softc {int sbm_state; int sbm_rxdma; int sbm_txdma; scalar_t__ sbm_base; scalar_t__ sbm_mdio; scalar_t__ sbm_imr; scalar_t__ sbm_isr; scalar_t__ sbm_rxfilter; scalar_t__ sbm_framecfg; scalar_t__ sbm_fifocfg; scalar_t__ sbm_maccfg; scalar_t__ sbm_macenable; } ;


 int DMA_RX ;
 int DMA_TX ;
 scalar_t__ R_MAC_ADFILTER_CFG ;
 scalar_t__ R_MAC_CFG ;
 scalar_t__ R_MAC_ENABLE ;
 scalar_t__ R_MAC_FRAMECFG ;
 scalar_t__ R_MAC_INT_MASK ;
 scalar_t__ R_MAC_MDIO ;
 scalar_t__ R_MAC_STATUS ;
 scalar_t__ R_MAC_THRSH_CFG ;
 int SBMAC_MAX_RXDESCR ;
 int SBMAC_MAX_TXDESCR ;
 int sbdma_initctx (int *,struct sbmac_softc*,int ,int ,int ) ;
 int sbmac_state_off ;

__attribute__((used)) static int sbmac_initctx(struct sbmac_softc *s)
{





 s->sbm_macenable = s->sbm_base + R_MAC_ENABLE;
 s->sbm_maccfg = s->sbm_base + R_MAC_CFG;
 s->sbm_fifocfg = s->sbm_base + R_MAC_THRSH_CFG;
 s->sbm_framecfg = s->sbm_base + R_MAC_FRAMECFG;
 s->sbm_rxfilter = s->sbm_base + R_MAC_ADFILTER_CFG;
 s->sbm_isr = s->sbm_base + R_MAC_STATUS;
 s->sbm_imr = s->sbm_base + R_MAC_INT_MASK;
 s->sbm_mdio = s->sbm_base + R_MAC_MDIO;






 sbdma_initctx(&(s->sbm_txdma),s,0,DMA_TX,SBMAC_MAX_TXDESCR);
 sbdma_initctx(&(s->sbm_rxdma),s,0,DMA_RX,SBMAC_MAX_RXDESCR);





 s->sbm_state = sbmac_state_off;

 return 0;
}
