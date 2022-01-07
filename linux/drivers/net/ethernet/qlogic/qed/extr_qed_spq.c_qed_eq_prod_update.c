
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct qed_hwfn {int rel_pf_id; } ;


 scalar_t__ GTT_BAR0_MAP_REG_USDM_RAM ;
 int REG_WR16 (struct qed_hwfn*,scalar_t__,int ) ;
 scalar_t__ USTORM_EQE_CONS_OFFSET (int ) ;

void qed_eq_prod_update(struct qed_hwfn *p_hwfn, u16 prod)
{
 u32 addr = GTT_BAR0_MAP_REG_USDM_RAM +
     USTORM_EQE_CONS_OFFSET(p_hwfn->rel_pf_id);

 REG_WR16(p_hwfn, addr, prod);
}
