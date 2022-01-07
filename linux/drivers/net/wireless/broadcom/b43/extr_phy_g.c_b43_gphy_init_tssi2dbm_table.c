
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43_phy {int radio_ver; struct b43_phy_g* g; } ;
struct b43_wldev {TYPE_2__* dev; struct b43_phy phy; } ;
struct b43_phy_g {int dyn_tssi_tbl; int tgt_idle_tssi; scalar_t__ tssi2dbm; } ;
typedef scalar_t__ s8 ;
typedef int s16 ;
struct TYPE_4__ {int chip_id; TYPE_1__* bus_sprom; } ;
struct TYPE_3__ {scalar_t__ itssi_bg; scalar_t__ pa0b2; scalar_t__ pa0b1; scalar_t__ pa0b0; } ;


 int B43_WARN_ON (int) ;
 int ENOMEM ;
 scalar_t__ b43_generate_dyn_tssi2dbm_tab (struct b43_wldev*,int,int,int) ;
 scalar_t__ b43_tssi2dbm_g_table ;

__attribute__((used)) static int b43_gphy_init_tssi2dbm_table(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_g *gphy = phy->g;
 s16 pab0, pab1, pab2;

 pab0 = (s16) (dev->dev->bus_sprom->pa0b0);
 pab1 = (s16) (dev->dev->bus_sprom->pa0b1);
 pab2 = (s16) (dev->dev->bus_sprom->pa0b2);

 B43_WARN_ON((dev->dev->chip_id == 0x4301) &&
      (phy->radio_ver != 0x2050));

 gphy->dyn_tssi_tbl = 0;

 if (pab0 != 0 && pab1 != 0 && pab2 != 0 &&
     pab0 != -1 && pab1 != -1 && pab2 != -1) {

  if ((s8) dev->dev->bus_sprom->itssi_bg != 0 &&
      (s8) dev->dev->bus_sprom->itssi_bg != -1) {
   gphy->tgt_idle_tssi =
    (s8) (dev->dev->bus_sprom->itssi_bg);
  } else
   gphy->tgt_idle_tssi = 62;
  gphy->tssi2dbm = b43_generate_dyn_tssi2dbm_tab(dev, pab0,
              pab1, pab2);
  if (!gphy->tssi2dbm)
   return -ENOMEM;
  gphy->dyn_tssi_tbl = 1;
 } else {

  gphy->tgt_idle_tssi = 52;
  gphy->tssi2dbm = b43_tssi2dbm_g_table;
 }

 return 0;
}
