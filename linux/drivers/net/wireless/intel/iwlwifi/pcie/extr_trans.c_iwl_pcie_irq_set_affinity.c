
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans_pcie {int shared_vec_mask; TYPE_2__* trans; int * affinity_mask; TYPE_1__* msix_entries; } ;
struct iwl_trans {int dummy; } ;
struct TYPE_4__ {int num_rx_queues; } ;
struct TYPE_3__ {int vector; } ;


 int IWL_ERR (TYPE_2__*,char*,int) ;
 int IWL_SHARED_IRQ_FIRST_RSS ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int cpu_online_mask ;
 int cpumask_next (int,int ) ;
 int cpumask_set_cpu (int,int *) ;
 int irq_set_affinity_hint (int ,int *) ;

__attribute__((used)) static void iwl_pcie_irq_set_affinity(struct iwl_trans *trans)
{
 int iter_rx_q, i, ret, cpu, offset;
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 i = trans_pcie->shared_vec_mask & IWL_SHARED_IRQ_FIRST_RSS ? 0 : 1;
 iter_rx_q = trans_pcie->trans->num_rx_queues - 1 + i;
 offset = 1 + i;
 for (; i < iter_rx_q ; i++) {




  cpu = cpumask_next(i - offset, cpu_online_mask);
  cpumask_set_cpu(cpu, &trans_pcie->affinity_mask[i]);
  ret = irq_set_affinity_hint(trans_pcie->msix_entries[i].vector,
         &trans_pcie->affinity_mask[i]);
  if (ret)
   IWL_ERR(trans_pcie->trans,
    "Failed to set affinity mask for IRQ %d\n",
    i);
 }
}
