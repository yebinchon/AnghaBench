
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct brcms_c_info {int hw; int band; TYPE_1__* stf; } ;
struct TYPE_2__ {int phytxant; } ;


 scalar_t__ BRCMS_PHY_11N_CAP (int ) ;
 int M_BCN_PCTLWD ;
 int PHY_TXC_ANT_MASK ;
 int brcms_b_read_shm (int ,int ) ;
 int brcms_b_write_shm (int ,int ,int) ;
 int brcms_c_stf_phytxchain_sel (struct brcms_c_info*,int ) ;

void brcms_c_beacon_phytxctl_txant_upd(struct brcms_c_info *wlc,
           u32 bcn_rspec)
{
 u16 phyctl;
 u16 phytxant = wlc->stf->phytxant;
 u16 mask = PHY_TXC_ANT_MASK;


 if (BRCMS_PHY_11N_CAP(wlc->band))
  phytxant = brcms_c_stf_phytxchain_sel(wlc, bcn_rspec);

 phyctl = brcms_b_read_shm(wlc->hw, M_BCN_PCTLWD);
 phyctl = (phyctl & ~mask) | phytxant;
 brcms_b_write_shm(wlc->hw, M_BCN_PCTLWD, phyctl);
}
