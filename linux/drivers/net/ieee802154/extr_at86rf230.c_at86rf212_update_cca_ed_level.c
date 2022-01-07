
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct at86rf230_local {TYPE_3__* hw; } ;
struct TYPE_6__ {TYPE_2__* phy; } ;
struct TYPE_4__ {void** cca_ed_levels; void* cca_ed_levels_size; } ;
struct TYPE_5__ {void* cca_ed_level; TYPE_1__ supported; } ;


 void* ARRAY_SIZE (void**) ;
 int SR_CCA_ED_THRES ;
 int WARN_ON (int) ;
 void** at86rf212_ed_levels_100 ;
 void** at86rf212_ed_levels_98 ;
 int at86rf230_read_subreg (struct at86rf230_local*,int ,unsigned int*) ;

__attribute__((used)) static inline int
at86rf212_update_cca_ed_level(struct at86rf230_local *lp, int rssi_base_val)
{
 unsigned int cca_ed_thres;
 int rc;

 rc = at86rf230_read_subreg(lp, SR_CCA_ED_THRES, &cca_ed_thres);
 if (rc < 0)
  return rc;

 switch (rssi_base_val) {
 case -98:
  lp->hw->phy->supported.cca_ed_levels = at86rf212_ed_levels_98;
  lp->hw->phy->supported.cca_ed_levels_size = ARRAY_SIZE(at86rf212_ed_levels_98);
  lp->hw->phy->cca_ed_level = at86rf212_ed_levels_98[cca_ed_thres];
  break;
 case -100:
  lp->hw->phy->supported.cca_ed_levels = at86rf212_ed_levels_100;
  lp->hw->phy->supported.cca_ed_levels_size = ARRAY_SIZE(at86rf212_ed_levels_100);
  lp->hw->phy->cca_ed_level = at86rf212_ed_levels_100[cca_ed_thres];
  break;
 default:
  WARN_ON(1);
 }

 return 0;
}
