
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_adapter {scalar_t__ base; } ;


 scalar_t__ EMAC_DMA_MAS_CTRL ;
 int INT_RD_CLR_EN ;
 int SOFT_RST ;
 int emac_mac_stop (struct emac_adapter*) ;
 int emac_reg_update32 (scalar_t__,int ,int ) ;
 int usleep_range (int,int) ;

void emac_mac_reset(struct emac_adapter *adpt)
{
 emac_mac_stop(adpt);

 emac_reg_update32(adpt->base + EMAC_DMA_MAS_CTRL, 0, SOFT_RST);
 usleep_range(100, 150);


 emac_reg_update32(adpt->base + EMAC_DMA_MAS_CTRL, 0, INT_RD_CLR_EN);
}
