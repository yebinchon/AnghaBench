
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int flowctrl; int advertising; } ;
struct TYPE_3__ {int supported; int advertised; int eee_enabled; int tx_lpi_enabled; int tx_lpi_timer; } ;
struct tg3 {int pci_fn; int phy_flags; int phy_id; TYPE_2__ link_config; TYPE_1__ eee; int phy_ape_lock; } ;
struct subsys_tbl_ent {int phy_id; } ;


 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_100baseT_Full ;
 scalar_t__ ASIC_REV_5717 ;
 scalar_t__ ASIC_REV_5719 ;
 scalar_t__ ASIC_REV_5720 ;
 scalar_t__ ASIC_REV_5762 ;
 scalar_t__ ASIC_REV_57765 ;
 scalar_t__ ASIC_REV_57766 ;
 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMSR_LSTATUS ;
 scalar_t__ CHIPREV_ID_5717_A0 ;
 scalar_t__ CHIPREV_ID_57765_A0 ;
 int ENABLE_APE ;
 int ENABLE_ASF ;
 int ENODEV ;
 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 int IS_SSB_CORE ;
 int MII_BMCR ;
 int MII_BMSR ;
 int MII_PHYSID1 ;
 int MII_PHYSID2 ;
 int PAUSE_AUTONEG ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int TG3_APE_LOCK_PHY0 ;
 int TG3_APE_LOCK_PHY1 ;
 int TG3_APE_LOCK_PHY2 ;
 int TG3_APE_LOCK_PHY3 ;
 int TG3_CPMU_DBTMR1_LNKIDLE_2047US ;
 scalar_t__ TG3_KNOWN_PHY_ID (int) ;
 int TG3_PHYFLG_10_100_ONLY ;
 int TG3_PHYFLG_1G_ON_VAUX_OK ;
 int TG3_PHYFLG_ANY_SERDES ;
 int TG3_PHYFLG_EEE_CAP ;
 int TG3_PHYFLG_KEEP_LINK_ON_PWRDN ;
 int TG3_PHYFLG_PHY_SERDES ;
 int TG3_PHY_ID_BCM5401 ;
 int TG3_PHY_ID_BCM8002 ;
 int TG3_PHY_ID_INVALID ;
 int TG3_PHY_ID_MASK ;
 int USE_PHYLIB ;
 scalar_t__ tg3_asic_rev (struct tg3*) ;
 scalar_t__ tg3_chip_rev_id (struct tg3*) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_flag_set (struct tg3*,int ) ;
 int tg3_init_5401phy_dsp (struct tg3*) ;
 struct subsys_tbl_ent* tg3_lookup_by_subsys (struct tg3*) ;
 int tg3_phy_autoneg_cfg (struct tg3*,int ,int) ;
 int tg3_phy_copper_an_config_ok (struct tg3*,int*) ;
 int tg3_phy_init (struct tg3*) ;
 int tg3_phy_init_link_config (struct tg3*) ;
 int tg3_phy_reset (struct tg3*) ;
 int tg3_phy_set_wirespeed (struct tg3*) ;
 int tg3_readphy (struct tg3*,int ,int*) ;
 int tg3_writephy (struct tg3*,int ,int) ;

__attribute__((used)) static int tg3_phy_probe(struct tg3 *tp)
{
 u32 hw_phy_id_1, hw_phy_id_2;
 u32 hw_phy_id, hw_phy_id_masked;
 int err;


 tg3_flag_set(tp, PAUSE_AUTONEG);
 tp->link_config.flowctrl = FLOW_CTRL_TX | FLOW_CTRL_RX;

 if (tg3_flag(tp, ENABLE_APE)) {
  switch (tp->pci_fn) {
  case 0:
   tp->phy_ape_lock = TG3_APE_LOCK_PHY0;
   break;
  case 1:
   tp->phy_ape_lock = TG3_APE_LOCK_PHY1;
   break;
  case 2:
   tp->phy_ape_lock = TG3_APE_LOCK_PHY2;
   break;
  case 3:
   tp->phy_ape_lock = TG3_APE_LOCK_PHY3;
   break;
  }
 }

 if (!tg3_flag(tp, ENABLE_ASF) &&
     !(tp->phy_flags & TG3_PHYFLG_ANY_SERDES) &&
     !(tp->phy_flags & TG3_PHYFLG_10_100_ONLY))
  tp->phy_flags &= ~(TG3_PHYFLG_1G_ON_VAUX_OK |
       TG3_PHYFLG_KEEP_LINK_ON_PWRDN);

 if (tg3_flag(tp, USE_PHYLIB))
  return tg3_phy_init(tp);




 err = 0;
 if (tg3_flag(tp, ENABLE_ASF) || tg3_flag(tp, ENABLE_APE)) {
  hw_phy_id = hw_phy_id_masked = TG3_PHY_ID_INVALID;
 } else {





  err |= tg3_readphy(tp, MII_PHYSID1, &hw_phy_id_1);
  err |= tg3_readphy(tp, MII_PHYSID2, &hw_phy_id_2);

  hw_phy_id = (hw_phy_id_1 & 0xffff) << 10;
  hw_phy_id |= (hw_phy_id_2 & 0xfc00) << 16;
  hw_phy_id |= (hw_phy_id_2 & 0x03ff) << 0;

  hw_phy_id_masked = hw_phy_id & TG3_PHY_ID_MASK;
 }

 if (!err && TG3_KNOWN_PHY_ID(hw_phy_id_masked)) {
  tp->phy_id = hw_phy_id;
  if (hw_phy_id_masked == TG3_PHY_ID_BCM8002)
   tp->phy_flags |= TG3_PHYFLG_PHY_SERDES;
  else
   tp->phy_flags &= ~TG3_PHYFLG_PHY_SERDES;
 } else {
  if (tp->phy_id != TG3_PHY_ID_INVALID) {



  } else {
   struct subsys_tbl_ent *p;




   p = tg3_lookup_by_subsys(tp);
   if (p) {
    tp->phy_id = p->phy_id;
   } else if (!tg3_flag(tp, IS_SSB_CORE)) {







    return -ENODEV;
   }

   if (!tp->phy_id ||
       tp->phy_id == TG3_PHY_ID_BCM8002)
    tp->phy_flags |= TG3_PHYFLG_PHY_SERDES;
  }
 }

 if (!(tp->phy_flags & TG3_PHYFLG_ANY_SERDES) &&
     (tg3_asic_rev(tp) == ASIC_REV_5719 ||
      tg3_asic_rev(tp) == ASIC_REV_5720 ||
      tg3_asic_rev(tp) == ASIC_REV_57766 ||
      tg3_asic_rev(tp) == ASIC_REV_5762 ||
      (tg3_asic_rev(tp) == ASIC_REV_5717 &&
       tg3_chip_rev_id(tp) != CHIPREV_ID_5717_A0) ||
      (tg3_asic_rev(tp) == ASIC_REV_57765 &&
       tg3_chip_rev_id(tp) != CHIPREV_ID_57765_A0))) {
  tp->phy_flags |= TG3_PHYFLG_EEE_CAP;

  tp->eee.supported = SUPPORTED_100baseT_Full |
        SUPPORTED_1000baseT_Full;
  tp->eee.advertised = ADVERTISED_100baseT_Full |
         ADVERTISED_1000baseT_Full;
  tp->eee.eee_enabled = 1;
  tp->eee.tx_lpi_enabled = 1;
  tp->eee.tx_lpi_timer = TG3_CPMU_DBTMR1_LNKIDLE_2047US;
 }

 tg3_phy_init_link_config(tp);

 if (!(tp->phy_flags & TG3_PHYFLG_KEEP_LINK_ON_PWRDN) &&
     !(tp->phy_flags & TG3_PHYFLG_ANY_SERDES) &&
     !tg3_flag(tp, ENABLE_APE) &&
     !tg3_flag(tp, ENABLE_ASF)) {
  u32 bmsr, dummy;

  tg3_readphy(tp, MII_BMSR, &bmsr);
  if (!tg3_readphy(tp, MII_BMSR, &bmsr) &&
      (bmsr & BMSR_LSTATUS))
   goto skip_phy_reset;

  err = tg3_phy_reset(tp);
  if (err)
   return err;

  tg3_phy_set_wirespeed(tp);

  if (!tg3_phy_copper_an_config_ok(tp, &dummy)) {
   tg3_phy_autoneg_cfg(tp, tp->link_config.advertising,
         tp->link_config.flowctrl);

   tg3_writephy(tp, MII_BMCR,
         BMCR_ANENABLE | BMCR_ANRESTART);
  }
 }

skip_phy_reset:
 if ((tp->phy_id & TG3_PHY_ID_MASK) == TG3_PHY_ID_BCM5401) {
  err = tg3_init_5401phy_dsp(tp);
  if (err)
   return err;

  err = tg3_init_5401phy_dsp(tp);
 }

 return err;
}
