
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct enetc_hw {int dummy; } ;
struct enetc_si {struct enetc_hw hw; } ;
struct enetc_pf {int total_vfs; } ;


 int ENETC_PRFSCAPR ;
 int ENETC_PRFSCAPR_GET_NUM_RFS (int ) ;
 int ENETC_PRFSMR ;
 int ENETC_PRFSMR_RFSE ;
 int ENETC_PSIRFSCFGR (int) ;
 int enetc_port_rd (struct enetc_hw*,int ) ;
 int enetc_port_wr (struct enetc_hw*,int ,int) ;
 struct enetc_pf* enetc_si_priv (struct enetc_si*) ;

__attribute__((used)) static void enetc_port_assign_rfs_entries(struct enetc_si *si)
{
 struct enetc_pf *pf = enetc_si_priv(si);
 struct enetc_hw *hw = &si->hw;
 int num_entries, vf_entries, i;
 u32 val;


 val = enetc_port_rd(hw, ENETC_PRFSCAPR);
 num_entries = ENETC_PRFSCAPR_GET_NUM_RFS(val);
 vf_entries = num_entries / (pf->total_vfs + 1);

 for (i = 0; i < pf->total_vfs; i++)
  enetc_port_wr(hw, ENETC_PSIRFSCFGR(i + 1), vf_entries);
 enetc_port_wr(hw, ENETC_PSIRFSCFGR(0),
        num_entries - vf_entries * pf->total_vfs);


 enetc_port_wr(hw, ENETC_PRFSMR, ENETC_PRFSMR_RFSE);
}
