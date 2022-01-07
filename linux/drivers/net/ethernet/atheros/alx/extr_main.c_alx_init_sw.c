
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ device; scalar_t__ subsystem_vendor; int subsystem_device; scalar_t__ revision; int dev; } ;
struct alx_hw {int lnk_patch; int smb_timer; int imt; int ith_tpd; int adv_cfg; int flowctrl; int rx_ctrl; int duplex; int link_speed; int max_dma_chnl; int dma_chnl; int mtu; struct pci_dev* pdev; } ;
struct alx_priv {int tx_ringsz; int rx_ringsz; int int_mask; TYPE_1__* dev; void* rxbuf_size; struct alx_hw hw; } ;
struct TYPE_2__ {int min_mtu; void* max_mtu; int mtu; } ;


 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_Autoneg ;
 scalar_t__ ALX_DEV_ID_AR8161 ;
 int ALX_FC_ANEG ;
 int ALX_FC_RX ;
 int ALX_FC_TX ;
 int ALX_ISR_MISC ;
 int ALX_MAC_CTRL_BRD_EN ;
 int ALX_MAC_CTRL_CRCE ;
 int ALX_MAC_CTRL_MHASH_ALG_HI5B ;
 int ALX_MAC_CTRL_PCRCE ;
 int ALX_MAC_CTRL_PRMBLEN_SHIFT ;
 int ALX_MAC_CTRL_RXFC_EN ;
 int ALX_MAC_CTRL_TXFC_EN ;
 int ALX_MAC_CTRL_WOLSPED_SWEN ;
 void* ALX_MAX_FRAME_LEN (int ) ;
 int ALX_MAX_FRAME_SIZE ;
 int DUPLEX_UNKNOWN ;
 scalar_t__ PCI_VENDOR_ID_ATTANSIC ;
 int SPEED_UNKNOWN ;
 int alx_identify_hw (struct alx_priv*) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int alx_init_sw(struct alx_priv *alx)
{
 struct pci_dev *pdev = alx->hw.pdev;
 struct alx_hw *hw = &alx->hw;
 int err;

 err = alx_identify_hw(alx);
 if (err) {
  dev_err(&pdev->dev, "unrecognized chip, aborting\n");
  return err;
 }

 alx->hw.lnk_patch =
  pdev->device == ALX_DEV_ID_AR8161 &&
  pdev->subsystem_vendor == PCI_VENDOR_ID_ATTANSIC &&
  pdev->subsystem_device == 0x0091 &&
  pdev->revision == 0;

 hw->smb_timer = 400;
 hw->mtu = alx->dev->mtu;
 alx->rxbuf_size = ALX_MAX_FRAME_LEN(hw->mtu);

 alx->dev->min_mtu = 34;
 alx->dev->max_mtu = ALX_MAX_FRAME_LEN(ALX_MAX_FRAME_SIZE);
 alx->tx_ringsz = 256;
 alx->rx_ringsz = 512;
 hw->imt = 200;
 alx->int_mask = ALX_ISR_MISC;
 hw->dma_chnl = hw->max_dma_chnl;
 hw->ith_tpd = alx->tx_ringsz / 3;
 hw->link_speed = SPEED_UNKNOWN;
 hw->duplex = DUPLEX_UNKNOWN;
 hw->adv_cfg = ADVERTISED_Autoneg |
        ADVERTISED_10baseT_Half |
        ADVERTISED_10baseT_Full |
        ADVERTISED_100baseT_Full |
        ADVERTISED_100baseT_Half |
        ADVERTISED_1000baseT_Full;
 hw->flowctrl = ALX_FC_ANEG | ALX_FC_RX | ALX_FC_TX;

 hw->rx_ctrl = ALX_MAC_CTRL_WOLSPED_SWEN |
        ALX_MAC_CTRL_MHASH_ALG_HI5B |
        ALX_MAC_CTRL_BRD_EN |
        ALX_MAC_CTRL_PCRCE |
        ALX_MAC_CTRL_CRCE |
        ALX_MAC_CTRL_RXFC_EN |
        ALX_MAC_CTRL_TXFC_EN |
        7 << ALX_MAC_CTRL_PRMBLEN_SHIFT;

 return err;
}
