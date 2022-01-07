
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct qede_rx_queue {int hw_rxq_prod_addr; int rx_comp_ring; int rx_bd_ring; } ;
struct qede_dev {int dummy; } ;
struct eth_rx_prod_data {void* cqe_prod; void* bd_prod; int member_0; } ;
typedef int rx_prods ;


 void* cpu_to_le16 (int ) ;
 int internal_ram_wr (int ,int,int *) ;
 int qed_chain_get_prod_idx (int *) ;
 int wmb () ;

void qede_update_rx_prod(struct qede_dev *edev, struct qede_rx_queue *rxq)
{
 u16 bd_prod = qed_chain_get_prod_idx(&rxq->rx_bd_ring);
 u16 cqe_prod = qed_chain_get_prod_idx(&rxq->rx_comp_ring);
 struct eth_rx_prod_data rx_prods = {0};


 rx_prods.bd_prod = cpu_to_le16(bd_prod);
 rx_prods.cqe_prod = cpu_to_le16(cqe_prod);





 wmb();

 internal_ram_wr(rxq->hw_rxq_prod_addr, sizeof(rx_prods),
   (u32 *)&rx_prods);
}
