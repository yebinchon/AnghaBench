
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_hwif {int cfg_regs_bar; int intr_regs_base; } ;


 int iounmap (int ) ;

void hinic_free_hwif(struct hinic_hwif *hwif)
{
 iounmap(hwif->intr_regs_base);
 iounmap(hwif->cfg_regs_bar);
}
