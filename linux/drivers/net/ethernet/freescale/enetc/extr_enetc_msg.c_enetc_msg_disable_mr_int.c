
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct enetc_hw {int dummy; } ;


 int ENETC_PSIIER ;
 int ENETC_PSIIER_MR_MASK ;
 int enetc_rd (struct enetc_hw*,int ) ;
 int enetc_wr (struct enetc_hw*,int ,int) ;

__attribute__((used)) static void enetc_msg_disable_mr_int(struct enetc_hw *hw)
{
 u32 psiier = enetc_rd(hw, ENETC_PSIIER);

 enetc_wr(hw, ENETC_PSIIER, psiier & ~ENETC_PSIIER_MR_MASK);
}
