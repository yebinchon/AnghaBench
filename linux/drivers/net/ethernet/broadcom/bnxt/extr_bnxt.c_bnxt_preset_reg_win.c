
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {scalar_t__ bar0; } ;


 int BNXT_CAG_REG_BASE ;
 scalar_t__ BNXT_GRCPF_REG_WINDOW_BASE_OUT ;
 scalar_t__ BNXT_PF (struct bnxt*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void bnxt_preset_reg_win(struct bnxt *bp)
{
 if (BNXT_PF(bp)) {

  writel(BNXT_CAG_REG_BASE,
         bp->bar0 + BNXT_GRCPF_REG_WINDOW_BASE_OUT + 12);
 }
}
