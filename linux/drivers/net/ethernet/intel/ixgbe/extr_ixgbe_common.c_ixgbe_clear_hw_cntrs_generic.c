
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;int (* identify ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {scalar_t__ id; TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef int s32 ;


 int IXGBE_BPRC ;
 int IXGBE_BPTC ;
 int IXGBE_CRCERRS ;
 int IXGBE_ERRBC ;
 int IXGBE_GORCH ;
 int IXGBE_GORCL ;
 int IXGBE_GOTCH ;
 int IXGBE_GOTCL ;
 int IXGBE_GPRC ;
 int IXGBE_GPTC ;
 int IXGBE_ILLERRC ;
 int IXGBE_LDPCECH ;
 int IXGBE_LDPCECL ;
 int IXGBE_LXOFFRXC ;
 int IXGBE_LXOFFRXCNT ;
 int IXGBE_LXOFFTXC ;
 int IXGBE_LXONRXC ;
 int IXGBE_LXONRXCNT ;
 int IXGBE_LXONTXC ;
 int IXGBE_MLFC ;
 int IXGBE_MNGPDC ;
 int IXGBE_MNGPRC ;
 int IXGBE_MNGPTC ;
 int IXGBE_MPC (int) ;
 int IXGBE_MPRC ;
 int IXGBE_MPTC ;
 int IXGBE_MRFC ;
 int IXGBE_MSPDC ;
 int IXGBE_PCRC8ECH ;
 int IXGBE_PCRC8ECL ;
 int IXGBE_PRC1023 ;
 int IXGBE_PRC127 ;
 int IXGBE_PRC1522 ;
 int IXGBE_PRC255 ;
 int IXGBE_PRC511 ;
 int IXGBE_PRC64 ;
 int IXGBE_PTC1023 ;
 int IXGBE_PTC127 ;
 int IXGBE_PTC1522 ;
 int IXGBE_PTC255 ;
 int IXGBE_PTC511 ;
 int IXGBE_PTC64 ;
 int IXGBE_PXOFFRXC (int) ;
 int IXGBE_PXOFFRXCNT (int) ;
 int IXGBE_PXOFFTXC (int) ;
 int IXGBE_PXON2OFFCNT (int) ;
 int IXGBE_PXONRXC (int) ;
 int IXGBE_PXONRXCNT (int) ;
 int IXGBE_PXONTXC (int) ;
 int IXGBE_QBRC (int) ;
 int IXGBE_QBRC_H (int) ;
 int IXGBE_QBRC_L (int) ;
 int IXGBE_QBTC (int) ;
 int IXGBE_QBTC_H (int) ;
 int IXGBE_QBTC_L (int) ;
 int IXGBE_QPRC (int) ;
 int IXGBE_QPRDC (int) ;
 int IXGBE_QPTC (int) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RFC ;
 int IXGBE_RJC ;
 int IXGBE_RLEC ;
 int IXGBE_RNBC (int) ;
 int IXGBE_ROC ;
 int IXGBE_RUC ;
 int IXGBE_TORH ;
 int IXGBE_TORL ;
 int IXGBE_TPR ;
 int IXGBE_TPT ;
 int MDIO_MMD_PCS ;
 scalar_t__ ixgbe_mac_82598EB ;
 scalar_t__ ixgbe_mac_82599EB ;
 scalar_t__ ixgbe_mac_X540 ;
 scalar_t__ ixgbe_mac_X550 ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*,int ,int ,int*) ;
 int stub3 (struct ixgbe_hw*,int ,int ,int*) ;
 int stub4 (struct ixgbe_hw*,int ,int ,int*) ;
 int stub5 (struct ixgbe_hw*,int ,int ,int*) ;

s32 ixgbe_clear_hw_cntrs_generic(struct ixgbe_hw *hw)
{
 u16 i = 0;

 IXGBE_READ_REG(hw, IXGBE_CRCERRS);
 IXGBE_READ_REG(hw, IXGBE_ILLERRC);
 IXGBE_READ_REG(hw, IXGBE_ERRBC);
 IXGBE_READ_REG(hw, IXGBE_MSPDC);
 for (i = 0; i < 8; i++)
  IXGBE_READ_REG(hw, IXGBE_MPC(i));

 IXGBE_READ_REG(hw, IXGBE_MLFC);
 IXGBE_READ_REG(hw, IXGBE_MRFC);
 IXGBE_READ_REG(hw, IXGBE_RLEC);
 IXGBE_READ_REG(hw, IXGBE_LXONTXC);
 IXGBE_READ_REG(hw, IXGBE_LXOFFTXC);
 if (hw->mac.type >= ixgbe_mac_82599EB) {
  IXGBE_READ_REG(hw, IXGBE_LXONRXCNT);
  IXGBE_READ_REG(hw, IXGBE_LXOFFRXCNT);
 } else {
  IXGBE_READ_REG(hw, IXGBE_LXONRXC);
  IXGBE_READ_REG(hw, IXGBE_LXOFFRXC);
 }

 for (i = 0; i < 8; i++) {
  IXGBE_READ_REG(hw, IXGBE_PXONTXC(i));
  IXGBE_READ_REG(hw, IXGBE_PXOFFTXC(i));
  if (hw->mac.type >= ixgbe_mac_82599EB) {
   IXGBE_READ_REG(hw, IXGBE_PXONRXCNT(i));
   IXGBE_READ_REG(hw, IXGBE_PXOFFRXCNT(i));
  } else {
   IXGBE_READ_REG(hw, IXGBE_PXONRXC(i));
   IXGBE_READ_REG(hw, IXGBE_PXOFFRXC(i));
  }
 }
 if (hw->mac.type >= ixgbe_mac_82599EB)
  for (i = 0; i < 8; i++)
   IXGBE_READ_REG(hw, IXGBE_PXON2OFFCNT(i));
 IXGBE_READ_REG(hw, IXGBE_PRC64);
 IXGBE_READ_REG(hw, IXGBE_PRC127);
 IXGBE_READ_REG(hw, IXGBE_PRC255);
 IXGBE_READ_REG(hw, IXGBE_PRC511);
 IXGBE_READ_REG(hw, IXGBE_PRC1023);
 IXGBE_READ_REG(hw, IXGBE_PRC1522);
 IXGBE_READ_REG(hw, IXGBE_GPRC);
 IXGBE_READ_REG(hw, IXGBE_BPRC);
 IXGBE_READ_REG(hw, IXGBE_MPRC);
 IXGBE_READ_REG(hw, IXGBE_GPTC);
 IXGBE_READ_REG(hw, IXGBE_GORCL);
 IXGBE_READ_REG(hw, IXGBE_GORCH);
 IXGBE_READ_REG(hw, IXGBE_GOTCL);
 IXGBE_READ_REG(hw, IXGBE_GOTCH);
 if (hw->mac.type == ixgbe_mac_82598EB)
  for (i = 0; i < 8; i++)
   IXGBE_READ_REG(hw, IXGBE_RNBC(i));
 IXGBE_READ_REG(hw, IXGBE_RUC);
 IXGBE_READ_REG(hw, IXGBE_RFC);
 IXGBE_READ_REG(hw, IXGBE_ROC);
 IXGBE_READ_REG(hw, IXGBE_RJC);
 IXGBE_READ_REG(hw, IXGBE_MNGPRC);
 IXGBE_READ_REG(hw, IXGBE_MNGPDC);
 IXGBE_READ_REG(hw, IXGBE_MNGPTC);
 IXGBE_READ_REG(hw, IXGBE_TORL);
 IXGBE_READ_REG(hw, IXGBE_TORH);
 IXGBE_READ_REG(hw, IXGBE_TPR);
 IXGBE_READ_REG(hw, IXGBE_TPT);
 IXGBE_READ_REG(hw, IXGBE_PTC64);
 IXGBE_READ_REG(hw, IXGBE_PTC127);
 IXGBE_READ_REG(hw, IXGBE_PTC255);
 IXGBE_READ_REG(hw, IXGBE_PTC511);
 IXGBE_READ_REG(hw, IXGBE_PTC1023);
 IXGBE_READ_REG(hw, IXGBE_PTC1522);
 IXGBE_READ_REG(hw, IXGBE_MPTC);
 IXGBE_READ_REG(hw, IXGBE_BPTC);
 for (i = 0; i < 16; i++) {
  IXGBE_READ_REG(hw, IXGBE_QPRC(i));
  IXGBE_READ_REG(hw, IXGBE_QPTC(i));
  if (hw->mac.type >= ixgbe_mac_82599EB) {
   IXGBE_READ_REG(hw, IXGBE_QBRC_L(i));
   IXGBE_READ_REG(hw, IXGBE_QBRC_H(i));
   IXGBE_READ_REG(hw, IXGBE_QBTC_L(i));
   IXGBE_READ_REG(hw, IXGBE_QBTC_H(i));
   IXGBE_READ_REG(hw, IXGBE_QPRDC(i));
  } else {
   IXGBE_READ_REG(hw, IXGBE_QBRC(i));
   IXGBE_READ_REG(hw, IXGBE_QBTC(i));
  }
 }

 if (hw->mac.type == ixgbe_mac_X550 || hw->mac.type == ixgbe_mac_X540) {
  if (hw->phy.id == 0)
   hw->phy.ops.identify(hw);
  hw->phy.ops.read_reg(hw, IXGBE_PCRC8ECL, MDIO_MMD_PCS, &i);
  hw->phy.ops.read_reg(hw, IXGBE_PCRC8ECH, MDIO_MMD_PCS, &i);
  hw->phy.ops.read_reg(hw, IXGBE_LDPCECL, MDIO_MMD_PCS, &i);
  hw->phy.ops.read_reg(hw, IXGBE_LDPCECH, MDIO_MMD_PCS, &i);
 }

 return 0;
}
