
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct enetc_hw {int dummy; } ;
struct enetc_si {TYPE_1__* pdev; struct enetc_hw hw; } ;
struct enetc_pf {int total_vfs; } ;
struct TYPE_2__ {int dev; } ;


 int ENETC_PCAPR0 ;
 int ENETC_PCAPR0_RXBDR (int) ;
 int ENETC_PCAPR0_TXBDR (int) ;
 int ENETC_PF_NUM_RINGS ;
 int ENETC_PSICFGR0 (int) ;
 int ENETC_PSICFGR0_SET_RXBDR (int) ;
 int ENETC_PSICFGR0_SET_TXBDR (int) ;
 int ENETC_PSICFGR0_SIVC (int) ;
 int ENETC_PSICFGR0_SIVIE ;
 int ENETC_PSICFGR0_VTE ;
 int ENETC_PSIVLANFMR ;
 int ENETC_PSIVLANFMR_VS ;
 int ENETC_PVCLCTR ;
 int ENETC_PVCLCTR_OVTPIDL (int) ;
 int ENETC_VLAN_TYPE_C ;
 int ENETC_VLAN_TYPE_S ;
 int dev_warn (int *,char*,int,int) ;
 int enetc_port_rd (struct enetc_hw*,int ) ;
 int enetc_port_wr (struct enetc_hw*,int ,int) ;
 struct enetc_pf* enetc_si_priv (struct enetc_si*) ;
 int min (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void enetc_port_si_configure(struct enetc_si *si)
{
 struct enetc_pf *pf = enetc_si_priv(si);
 struct enetc_hw *hw = &si->hw;
 int num_rings, i;
 u32 val;

 val = enetc_port_rd(hw, ENETC_PCAPR0);
 num_rings = min(ENETC_PCAPR0_RXBDR(val), ENETC_PCAPR0_TXBDR(val));

 val = ENETC_PSICFGR0_SET_TXBDR(ENETC_PF_NUM_RINGS);
 val |= ENETC_PSICFGR0_SET_RXBDR(ENETC_PF_NUM_RINGS);

 if (unlikely(num_rings < ENETC_PF_NUM_RINGS)) {
  val = ENETC_PSICFGR0_SET_TXBDR(num_rings);
  val |= ENETC_PSICFGR0_SET_RXBDR(num_rings);

  dev_warn(&si->pdev->dev, "Found %d rings, expected %d!\n",
    num_rings, ENETC_PF_NUM_RINGS);

  num_rings = 0;
 }


 val |= ENETC_PSICFGR0_SIVC(ENETC_VLAN_TYPE_C | ENETC_VLAN_TYPE_S);

 enetc_port_wr(hw, ENETC_PSICFGR0(0), val);

 if (num_rings)
  num_rings -= ENETC_PF_NUM_RINGS;


 val = ENETC_PSICFGR0_SIVC(ENETC_VLAN_TYPE_C | ENETC_VLAN_TYPE_S);
 val |= ENETC_PSICFGR0_VTE | ENETC_PSICFGR0_SIVIE;

 if (num_rings) {
  num_rings /= pf->total_vfs;
  val |= ENETC_PSICFGR0_SET_TXBDR(num_rings);
  val |= ENETC_PSICFGR0_SET_RXBDR(num_rings);
 }

 for (i = 0; i < pf->total_vfs; i++)
  enetc_port_wr(hw, ENETC_PSICFGR0(i + 1), val);


 val = ENETC_PVCLCTR_OVTPIDL(ENETC_VLAN_TYPE_C | ENETC_VLAN_TYPE_S);
 enetc_port_wr(hw, ENETC_PVCLCTR, val);

 enetc_port_wr(hw, ENETC_PSIVLANFMR, ENETC_PSIVLANFMR_VS);
}
