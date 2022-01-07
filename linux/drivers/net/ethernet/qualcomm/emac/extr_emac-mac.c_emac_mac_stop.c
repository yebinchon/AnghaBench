
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_adapter {scalar_t__ base; } ;


 scalar_t__ EMAC_MAC_CTRL ;
 scalar_t__ EMAC_RXQ_CTRL_0 ;
 scalar_t__ EMAC_TXQ_CTRL_0 ;
 int RXEN ;
 int RXQ_EN ;
 int TXEN ;
 int TXQ_EN ;
 int emac_reg_update32 (scalar_t__,int,int ) ;
 int usleep_range (int,int) ;

void emac_mac_stop(struct emac_adapter *adpt)
{
 emac_reg_update32(adpt->base + EMAC_RXQ_CTRL_0, RXQ_EN, 0);
 emac_reg_update32(adpt->base + EMAC_TXQ_CTRL_0, TXQ_EN, 0);
 emac_reg_update32(adpt->base + EMAC_MAC_CTRL, TXEN | RXEN, 0);
 usleep_range(1000, 1050);
}
