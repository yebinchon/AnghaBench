
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_hw {int dummy; } ;


 int GMAC_IRQ_MSK ;
 int GM_MC_ADDR_H1 ;
 int GM_MC_ADDR_H2 ;
 int GM_MC_ADDR_H3 ;
 int GM_MC_ADDR_H4 ;
 int GM_RXCR_MCF_ENA ;
 int GM_RXCR_UCF_ENA ;
 int GM_RX_CTRL ;
 int SK_REG (unsigned int,int ) ;
 int gma_read16 (struct sky2_hw*,unsigned int,int ) ;
 int gma_write16 (struct sky2_hw*,unsigned int,int ,int) ;
 int sky2_write8 (struct sky2_hw*,int ,int ) ;

__attribute__((used)) static void sky2_gmac_reset(struct sky2_hw *hw, unsigned port)
{
 u16 reg;


 sky2_write8(hw, SK_REG(port, GMAC_IRQ_MSK), 0);

 gma_write16(hw, port, GM_MC_ADDR_H1, 0);
 gma_write16(hw, port, GM_MC_ADDR_H2, 0);
 gma_write16(hw, port, GM_MC_ADDR_H3, 0);
 gma_write16(hw, port, GM_MC_ADDR_H4, 0);

 reg = gma_read16(hw, port, GM_RX_CTRL);
 reg |= GM_RXCR_UCF_ENA | GM_RXCR_MCF_ENA;
 gma_write16(hw, port, GM_RX_CTRL, reg);
}
