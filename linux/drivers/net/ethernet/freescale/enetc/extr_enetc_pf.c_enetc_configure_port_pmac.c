
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct enetc_hw {int dummy; } ;


 int ENETC_MMCSR ;
 int ENETC_MMCSR_ME ;
 int ENETC_PFPMR ;
 int ENETC_PFPMR_MWLM ;
 int ENETC_PFPMR_PMACE ;
 int enetc_port_rd (struct enetc_hw*,int ) ;
 int enetc_port_wr (struct enetc_hw*,int ,int) ;

__attribute__((used)) static void enetc_configure_port_pmac(struct enetc_hw *hw)
{
 u32 temp;


 temp = enetc_port_rd(hw, ENETC_PFPMR);
 enetc_port_wr(hw, ENETC_PFPMR,
        temp | ENETC_PFPMR_PMACE | ENETC_PFPMR_MWLM);

 temp = enetc_port_rd(hw, ENETC_MMCSR);
 enetc_port_wr(hw, ENETC_MMCSR, temp | ENETC_MMCSR_ME);
}
