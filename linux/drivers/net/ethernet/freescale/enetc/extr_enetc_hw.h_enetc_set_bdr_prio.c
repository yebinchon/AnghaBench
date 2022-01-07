
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct enetc_hw {int dummy; } ;


 int ENETC_TBMR ;
 int ENETC_TBMR_PRIO_MASK ;
 int ENETC_TBMR_SET_PRIO (int) ;
 int enetc_txbdr_rd (struct enetc_hw*,int,int ) ;
 int enetc_txbdr_wr (struct enetc_hw*,int,int ,int ) ;

__attribute__((used)) static inline void enetc_set_bdr_prio(struct enetc_hw *hw, int bdr_idx,
          int prio)
{
 u32 val = enetc_txbdr_rd(hw, bdr_idx, ENETC_TBMR);

 val &= ~ENETC_TBMR_PRIO_MASK;
 val |= ENETC_TBMR_SET_PRIO(prio);
 enetc_txbdr_wr(hw, bdr_idx, ENETC_TBMR, val);
}
