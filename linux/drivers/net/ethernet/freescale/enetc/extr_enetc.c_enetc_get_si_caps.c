
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct enetc_hw {int dummy; } ;
struct enetc_si {int num_rx_rings; int num_tx_rings; int num_rss; int num_fs_entries; struct enetc_hw hw; } ;


 int ENETC_MAX_RFS_SIZE ;
 int ENETC_SICAPR0 ;
 int ENETC_SIPCAPR0 ;
 int ENETC_SIPCAPR0_RSS ;
 int ENETC_SIRFSCAPR ;
 int ENETC_SIRFSCAPR_GET_NUM_RFS (int) ;
 int ENETC_SIRSSCAPR ;
 int ENETC_SIRSSCAPR_GET_NUM_RSS (int) ;
 int enetc_rd (struct enetc_hw*,int ) ;
 int min (int ,int ) ;

void enetc_get_si_caps(struct enetc_si *si)
{
 struct enetc_hw *hw = &si->hw;
 u32 val;


 val = enetc_rd(hw, ENETC_SICAPR0);
 si->num_rx_rings = (val >> 16) & 0xff;
 si->num_tx_rings = val & 0xff;

 val = enetc_rd(hw, ENETC_SIRFSCAPR);
 si->num_fs_entries = ENETC_SIRFSCAPR_GET_NUM_RFS(val);
 si->num_fs_entries = min(si->num_fs_entries, ENETC_MAX_RFS_SIZE);

 si->num_rss = 0;
 val = enetc_rd(hw, ENETC_SIPCAPR0);
 if (val & ENETC_SIPCAPR0_RSS) {
  val = enetc_rd(hw, ENETC_SIRSSCAPR);
  si->num_rss = ENETC_SIRSSCAPR_GET_NUM_RSS(val);
 }
}
