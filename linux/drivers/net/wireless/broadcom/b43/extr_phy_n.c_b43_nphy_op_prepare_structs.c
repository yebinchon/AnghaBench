
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int extpa_gain; } ;
struct TYPE_10__ {int extpa_gain; } ;
struct TYPE_12__ {TYPE_5__ ghz5; TYPE_4__ ghz2; } ;
struct ssb_sprom {int revision; int boardflags2_lo; TYPE_6__ fem; } ;
struct pci_dev {int device; } ;
struct b43_phy {int rev; struct b43_phy_n* n; } ;
struct b43_wldev {struct b43_phy phy; TYPE_3__* dev; } ;
struct b43_phy_n {int hang_avoid; int gain_boost; int txrx_chain; int phyrxchain; int perical; int* tx_pwr_idx; int txpwrctrl; int pwg_gain_5ghz; int ipa2g_on; int ipa5g_on; int spur_avoid; } ;
struct TYPE_9__ {scalar_t__ board_vendor; int core_rev; scalar_t__ bus_type; TYPE_2__* sdev; struct ssb_sprom* bus_sprom; } ;
struct TYPE_8__ {TYPE_1__* bus; } ;
struct TYPE_7__ {scalar_t__ bustype; struct pci_dev* host_pci; } ;


 int B43_BFL2_5G_PWRGAIN ;
 int B43_BFL2_TXPWRCTRL_EN ;
 scalar_t__ B43_BUS_SSB ;
 int B43_SPUR_AVOID_AUTO ;
 int B43_SPUR_AVOID_DISABLE ;
 scalar_t__ PCI_VENDOR_ID_APPLE ;
 scalar_t__ SSB_BUSTYPE_PCI ;
 int memset (struct b43_phy_n*,int ,int) ;

__attribute__((used)) static void b43_nphy_op_prepare_structs(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_n *nphy = phy->n;
 struct ssb_sprom *sprom = dev->dev->bus_sprom;

 memset(nphy, 0, sizeof(*nphy));

 nphy->hang_avoid = (phy->rev == 3 || phy->rev == 4);
 nphy->spur_avoid = (phy->rev >= 3) ?
    B43_SPUR_AVOID_AUTO : B43_SPUR_AVOID_DISABLE;
 nphy->gain_boost = 1;
 nphy->txrx_chain = 2;
 nphy->phyrxchain = 3;
 nphy->perical = 2;


 nphy->tx_pwr_idx[0] = 128;
 nphy->tx_pwr_idx[1] = 128;


 nphy->txpwrctrl = 0;
 nphy->pwg_gain_5ghz = 0;
 if (dev->phy.rev >= 3 ||
     (dev->dev->board_vendor == PCI_VENDOR_ID_APPLE &&
      (dev->dev->core_rev == 11 || dev->dev->core_rev == 12))) {
  nphy->txpwrctrl = 1;
  nphy->pwg_gain_5ghz = 1;
 } else if (sprom->revision >= 4) {
  if (dev->phy.rev >= 2 &&
      (sprom->boardflags2_lo & B43_BFL2_TXPWRCTRL_EN)) {
   nphy->txpwrctrl = 1;
  } else if (sprom->boardflags2_lo & B43_BFL2_5G_PWRGAIN) {
   nphy->pwg_gain_5ghz = 1;
  }
 }

 if (dev->phy.rev >= 3) {
  nphy->ipa2g_on = sprom->fem.ghz2.extpa_gain == 2;
  nphy->ipa5g_on = sprom->fem.ghz5.extpa_gain == 2;
 }
}
