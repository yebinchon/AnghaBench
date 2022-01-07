
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_port {unsigned int port; struct sky2_hw* hw; } ;
struct sky2_hw {int dummy; } ;


 int GM_GPCR_RX_ENA ;
 int GM_GPCR_TX_ENA ;
 int GM_GP_CTRL ;
 int gma_read16 (struct sky2_hw*,unsigned int,int ) ;
 int gma_write16 (struct sky2_hw*,unsigned int,int ,int) ;

__attribute__((used)) static void sky2_enable_rx_tx(struct sky2_port *sky2)
{
 struct sky2_hw *hw = sky2->hw;
 unsigned port = sky2->port;
 u16 reg;

 reg = gma_read16(hw, port, GM_GP_CTRL);
 reg |= GM_GPCR_RX_ENA | GM_GPCR_TX_ENA;
 gma_write16(hw, port, GM_GP_CTRL, reg);
}
