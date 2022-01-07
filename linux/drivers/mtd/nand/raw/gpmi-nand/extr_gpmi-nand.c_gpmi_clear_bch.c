
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resources {scalar_t__ bch_regs; } ;
struct gpmi_nand_data {struct resources resources; } ;


 int BM_BCH_CTRL_COMPLETE_IRQ ;
 scalar_t__ HW_BCH_CTRL_CLR ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void gpmi_clear_bch(struct gpmi_nand_data *this)
{
 struct resources *r = &this->resources;
 writel(BM_BCH_CTRL_COMPLETE_IRQ, r->bch_regs + HW_BCH_CTRL_CLR);
}
