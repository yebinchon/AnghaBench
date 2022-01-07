
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct enetc_hw {int dummy; } ;


 int ENETC_TBMR ;
 int ENETC_TBMR_VIH ;
 int enetc_txbdr_rd (struct enetc_hw*,int,int ) ;
 int enetc_txbdr_wr (struct enetc_hw*,int,int ,int) ;

__attribute__((used)) static inline void enetc_enable_txvlan(struct enetc_hw *hw, int si_idx,
           bool en)
{
 u32 val = enetc_txbdr_rd(hw, si_idx, ENETC_TBMR);

 val = (val & ~ENETC_TBMR_VIH) | (en ? ENETC_TBMR_VIH : 0);
 enetc_txbdr_wr(hw, si_idx, ENETC_TBMR, val);
}
