
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {scalar_t__ pause; scalar_t__ asym_pause; scalar_t__ speed; scalar_t__ duplex; } ;
struct emac_adapter {scalar_t__ rx_flow_control; int tx_flow_control; int preamble; int irq_mod; scalar_t__ base; scalar_t__ csr; scalar_t__ single_pause_mode; scalar_t__ automatic; struct phy_device* phydev; } ;


 int BROAD_EN ;
 int CRCE ;
 int DEBUG_MODE ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ EMAC_ATHR_HEADER_CTRL ;
 scalar_t__ EMAC_DMA_MAS_CTRL ;
 scalar_t__ EMAC_EMAC_WRAPPER_CSR1 ;
 scalar_t__ EMAC_IRQ_MOD_TIM_INIT ;
 scalar_t__ EMAC_MAC_CTRL ;
 scalar_t__ EMAC_RXQ_CTRL_0 ;
 scalar_t__ EMAC_TXQ_CTRL_0 ;
 int FLCHK ;
 int FREQ_MODE ;
 int FULLD ;
 int HEADER_CNT_EN ;
 int HEADER_ENABLE ;
 int HUGE ;
 int HUGEN ;
 int INT_RD_CLR_EN ;
 int IRQ_MODERATOR2_EN ;
 int IRQ_MODERATOR_EN ;
 int LPW_MODE ;
 int MULTI_ALL ;
 int PCRCE ;
 int PRLEN_BMSK ;
 int PRLEN_SHFT ;
 int RXEN ;
 int RXFC ;
 int RXQ_EN ;
 int RX_CHKSUM_EN ;
 int SIMR ;
 int SINGLE_PAUSE_MODE ;
 int SPEED (int) ;
 scalar_t__ SPEED_1000 ;
 int SPEED_MASK ;
 int TPAUSE ;
 int TXEN ;
 int TXFC ;
 int TXQ_EN ;
 int VLAN_STRIP ;
 int emac_mac_mode_config (struct emac_adapter*) ;
 int emac_reg_update32 (scalar_t__,int,int ) ;
 int readl (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void emac_mac_start(struct emac_adapter *adpt)
{
 struct phy_device *phydev = adpt->phydev;
 u32 mac, csr1;


 emac_reg_update32(adpt->base + EMAC_TXQ_CTRL_0, 0, TXQ_EN);


 emac_reg_update32(adpt->base + EMAC_RXQ_CTRL_0, 0, RXQ_EN);


 mac = readl(adpt->base + EMAC_MAC_CTRL);
 csr1 = readl(adpt->csr + EMAC_EMAC_WRAPPER_CSR1);

 mac |= TXEN | RXEN;





 mac &= ~(RXFC | TXFC);

 if (adpt->automatic) {

  adpt->rx_flow_control = phydev->pause;
  adpt->tx_flow_control = phydev->pause != phydev->asym_pause;
 }
 mac |= adpt->rx_flow_control ? RXFC : 0;
 mac |= adpt->tx_flow_control ? TXFC : 0;


 mac &= ~SPEED_MASK;
 if (phydev->speed == SPEED_1000) {
  mac |= SPEED(2);
  csr1 |= FREQ_MODE;
 } else {
  mac |= SPEED(1);
  csr1 &= ~FREQ_MODE;
 }

 if (phydev->duplex == DUPLEX_FULL)
  mac |= FULLD;
 else
  mac &= ~FULLD;


 mac |= (CRCE | PCRCE);
 mac |= ((adpt->preamble << PRLEN_SHFT) & PRLEN_BMSK);
 mac |= BROAD_EN;
 mac |= FLCHK;
 mac &= ~RX_CHKSUM_EN;
 mac &= ~(HUGEN | VLAN_STRIP | TPAUSE | SIMR | HUGE | MULTI_ALL |
   DEBUG_MODE | SINGLE_PAUSE_MODE);
 mac |= adpt->single_pause_mode ? SINGLE_PAUSE_MODE : 0;

 writel_relaxed(csr1, adpt->csr + EMAC_EMAC_WRAPPER_CSR1);

 writel_relaxed(mac, adpt->base + EMAC_MAC_CTRL);





 writel_relaxed(adpt->irq_mod, adpt->base + EMAC_IRQ_MOD_TIM_INIT);
 writel_relaxed(INT_RD_CLR_EN | LPW_MODE | IRQ_MODERATOR_EN |
   IRQ_MODERATOR2_EN, adpt->base + EMAC_DMA_MAS_CTRL);

 emac_mac_mode_config(adpt);

 emac_reg_update32(adpt->base + EMAC_ATHR_HEADER_CTRL,
     (HEADER_ENABLE | HEADER_CNT_EN), 0);
}
