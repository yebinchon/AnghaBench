
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int * tx_preemphasis; int * rx_preemphasis; } ;
struct bnx2x {int dummy; } ;


 int CL22_WR_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,scalar_t__,int ,int ) ;
 scalar_t__ MDIO_REG_BANK_RX0 ;
 scalar_t__ MDIO_REG_BANK_RX1 ;
 scalar_t__ MDIO_REG_BANK_RX3 ;
 scalar_t__ MDIO_REG_BANK_TX0 ;
 scalar_t__ MDIO_REG_BANK_TX1 ;
 scalar_t__ MDIO_REG_BANK_TX3 ;
 int MDIO_RX0_RX_EQ_BOOST ;
 int MDIO_TX0_TX_DRIVER ;

__attribute__((used)) static void bnx2x_set_preemphasis(struct bnx2x_phy *phy,
      struct link_params *params)
{

 u16 bank, i = 0;
 struct bnx2x *bp = params->bp;

 for (bank = MDIO_REG_BANK_RX0, i = 0; bank <= MDIO_REG_BANK_RX3;
       bank += (MDIO_REG_BANK_RX1-MDIO_REG_BANK_RX0), i++) {
   CL22_WR_OVER_CL45(bp, phy,
       bank,
       MDIO_RX0_RX_EQ_BOOST,
       phy->rx_preemphasis[i]);
 }

 for (bank = MDIO_REG_BANK_TX0, i = 0; bank <= MDIO_REG_BANK_TX3;
        bank += (MDIO_REG_BANK_TX1 - MDIO_REG_BANK_TX0), i++) {
   CL22_WR_OVER_CL45(bp, phy,
       bank,
       MDIO_TX0_TX_DRIVER,
       phy->tx_preemphasis[i]);
 }
}
