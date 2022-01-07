
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enic {TYPE_1__* cq; } ;
struct TYPE_2__ {unsigned int interrupt_offset; } ;


 size_t enic_cq_wq (struct enic*,unsigned int) ;

__attribute__((used)) static inline unsigned int enic_msix_wq_intr(struct enic *enic,
 unsigned int wq)
{
 return enic->cq[enic_cq_wq(enic, wq)].interrupt_offset;
}
