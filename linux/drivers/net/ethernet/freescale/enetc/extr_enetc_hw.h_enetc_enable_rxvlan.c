
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct enetc_hw {int dummy; } ;


 int ENETC_RBMR ;
 int ENETC_RBMR_VTE ;
 int enetc_rxbdr_rd (struct enetc_hw*,int,int ) ;
 int enetc_rxbdr_wr (struct enetc_hw*,int,int ,int) ;

__attribute__((used)) static inline void enetc_enable_rxvlan(struct enetc_hw *hw, int si_idx,
           bool en)
{
 u32 val = enetc_rxbdr_rd(hw, si_idx, ENETC_RBMR);

 val = (val & ~ENETC_RBMR_VTE) | (en ? ENETC_RBMR_VTE : 0);
 enetc_rxbdr_wr(hw, si_idx, ENETC_RBMR, val);
}
