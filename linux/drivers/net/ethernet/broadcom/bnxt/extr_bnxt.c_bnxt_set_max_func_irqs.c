
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int max_irqs; } ;
struct bnxt {TYPE_1__ hw_resc; } ;



__attribute__((used)) static void bnxt_set_max_func_irqs(struct bnxt *bp, unsigned int max_irqs)
{
 bp->hw_resc.max_irqs = max_irqs;
}
