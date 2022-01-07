
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct brcms_c_info {int bcn_rspec; scalar_t__ clk; TYPE_2__* stf; TYPE_3__* hw; TYPE_1__* pub; } ;
struct TYPE_6__ {int d11core; } ;
struct TYPE_5__ {scalar_t__ txstreams; size_t txchain; size_t* txcore; size_t phytxant; } ;
struct TYPE_4__ {int unit; } ;


 size_t PHY_TXC_ANT_SHIFT ;
 int brcms_b_txant_set (TYPE_3__*,size_t) ;
 int brcms_c_beacon_phytxctl_txant_upd (struct brcms_c_info*,int ) ;
 int brcms_c_enable_mac (struct brcms_c_info*) ;
 int brcms_c_suspend_mac_and_wait (struct brcms_c_info*) ;
 int brcms_dbg_ht (int ,char*,int ,size_t,size_t) ;
 scalar_t__ hweight8 (size_t) ;

__attribute__((used)) static int brcms_c_stf_txcore_set(struct brcms_c_info *wlc, u8 Nsts,
      u8 core_mask)
{
 brcms_dbg_ht(wlc->hw->d11core, "wl%d: Nsts %d core_mask %x\n",
       wlc->pub->unit, Nsts, core_mask);

 if (hweight8(core_mask) > wlc->stf->txstreams)
  core_mask = 0;

 if ((hweight8(core_mask) == wlc->stf->txstreams) &&
     ((core_mask & ~wlc->stf->txchain)
      || !(core_mask & wlc->stf->txchain)))
  core_mask = wlc->stf->txchain;

 wlc->stf->txcore[Nsts] = core_mask;

 if (Nsts == 1) {



  wlc->stf->phytxant = core_mask << PHY_TXC_ANT_SHIFT;
  brcms_b_txant_set(wlc->hw, wlc->stf->phytxant);
  if (wlc->clk) {
   brcms_c_suspend_mac_and_wait(wlc);
   brcms_c_beacon_phytxctl_txant_upd(wlc, wlc->bcn_rspec);
   brcms_c_enable_mac(wlc);
  }
 }

 return 0;
}
