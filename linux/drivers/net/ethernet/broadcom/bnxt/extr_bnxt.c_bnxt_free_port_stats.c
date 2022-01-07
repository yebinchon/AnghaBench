
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_port_stats_ext {int dummy; } ;
struct rx_port_stats_ext {int dummy; } ;
struct pcie_ctx_hw_stats {int dummy; } ;
struct pci_dev {int dev; } ;
struct bnxt {int hw_port_stats_size; int * hw_pcie_stats; int hw_pcie_stats_map; int * hw_rx_port_stats_ext; int hw_rx_port_stats_ext_map; int * hw_tx_port_stats_ext; int hw_tx_port_stats_ext_map; int * hw_rx_port_stats; int hw_rx_port_stats_map; int flags; struct pci_dev* pdev; } ;


 int BNXT_FLAG_PORT_STATS ;
 int BNXT_FLAG_PORT_STATS_EXT ;
 int dma_free_coherent (int *,int,int *,int ) ;

__attribute__((used)) static void bnxt_free_port_stats(struct bnxt *bp)
{
 struct pci_dev *pdev = bp->pdev;

 bp->flags &= ~BNXT_FLAG_PORT_STATS;
 bp->flags &= ~BNXT_FLAG_PORT_STATS_EXT;

 if (bp->hw_rx_port_stats) {
  dma_free_coherent(&pdev->dev, bp->hw_port_stats_size,
      bp->hw_rx_port_stats,
      bp->hw_rx_port_stats_map);
  bp->hw_rx_port_stats = ((void*)0);
 }

 if (bp->hw_tx_port_stats_ext) {
  dma_free_coherent(&pdev->dev, sizeof(struct tx_port_stats_ext),
      bp->hw_tx_port_stats_ext,
      bp->hw_tx_port_stats_ext_map);
  bp->hw_tx_port_stats_ext = ((void*)0);
 }

 if (bp->hw_rx_port_stats_ext) {
  dma_free_coherent(&pdev->dev, sizeof(struct rx_port_stats_ext),
      bp->hw_rx_port_stats_ext,
      bp->hw_rx_port_stats_ext_map);
  bp->hw_rx_port_stats_ext = ((void*)0);
 }

 if (bp->hw_pcie_stats) {
  dma_free_coherent(&pdev->dev, sizeof(struct pcie_ctx_hw_stats),
      bp->hw_pcie_stats, bp->hw_pcie_stats_map);
  bp->hw_pcie_stats = ((void*)0);
 }
}
