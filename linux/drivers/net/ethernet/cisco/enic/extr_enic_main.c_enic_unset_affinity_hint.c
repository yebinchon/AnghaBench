
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enic {int intr_count; TYPE_1__* msix_entry; } ;
struct TYPE_2__ {int vector; } ;


 int irq_set_affinity_hint (int ,int *) ;

__attribute__((used)) static void enic_unset_affinity_hint(struct enic *enic)
{
 int i;

 for (i = 0; i < enic->intr_count; i++)
  irq_set_affinity_hint(enic->msix_entry[i].vector, ((void*)0));
}
