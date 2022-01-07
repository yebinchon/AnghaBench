
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct spa {int reg_pe_handle; int reg_dar; int reg_dsisr; } ;


 int SPA_PE_MASK ;
 int in_be64 (int ) ;

__attribute__((used)) static void read_irq(struct spa *spa, u64 *dsisr, u64 *dar, u64 *pe)
{
 u64 reg;

 *dsisr = in_be64(spa->reg_dsisr);
 *dar = in_be64(spa->reg_dar);
 reg = in_be64(spa->reg_pe_handle);
 *pe = reg & SPA_PE_MASK;
}
