
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_port {int port; struct skge_hw* hw; } ;
struct skge_hw {int dummy; } ;


 int GMAC_CTRL ;
 int GMAC_IRQ_MSK ;
 int GMC_RST_SET ;
 int GM_GPCR_RX_ENA ;
 int GM_GPCR_TX_ENA ;
 int GM_GP_CTRL ;
 int GPC_RST_SET ;
 int GPHY_CTRL ;
 int SK_REG (int,int ) ;
 int gma_read16 (struct skge_hw*,int,int ) ;
 int gma_write16 (struct skge_hw*,int,int ,int) ;
 int skge_write8 (struct skge_hw*,int ,int ) ;
 int yukon_reset (struct skge_hw*,int) ;
 int yukon_suspend (struct skge_hw*,int) ;

__attribute__((used)) static void yukon_stop(struct skge_port *skge)
{
 struct skge_hw *hw = skge->hw;
 int port = skge->port;

 skge_write8(hw, SK_REG(port, GMAC_IRQ_MSK), 0);
 yukon_reset(hw, port);

 gma_write16(hw, port, GM_GP_CTRL,
    gma_read16(hw, port, GM_GP_CTRL)
    & ~(GM_GPCR_TX_ENA|GM_GPCR_RX_ENA));
 gma_read16(hw, port, GM_GP_CTRL);

 yukon_suspend(hw, port);


 skge_write8(hw, SK_REG(port, GPHY_CTRL), GPC_RST_SET);
 skge_write8(hw, SK_REG(port, GMAC_CTRL), GMC_RST_SET);
}
