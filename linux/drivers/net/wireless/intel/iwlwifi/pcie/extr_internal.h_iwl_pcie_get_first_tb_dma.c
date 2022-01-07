
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_txq {scalar_t__ first_tb_dma; } ;
struct iwl_pcie_first_tb_buf {int dummy; } ;
typedef scalar_t__ dma_addr_t ;



__attribute__((used)) static inline dma_addr_t
iwl_pcie_get_first_tb_dma(struct iwl_txq *txq, int idx)
{
 return txq->first_tb_dma +
        sizeof(struct iwl_pcie_first_tb_buf) * idx;
}
