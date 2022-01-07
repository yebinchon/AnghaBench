
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_rxd_ap {scalar_t__ rx_ctrl; int pkt_phys_addr; int pkt_len; } ;
typedef int dma_addr_t ;


 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int wmb () ;

__attribute__((used)) static void mwl8k_rxd_ap_refill(void *_rxd, dma_addr_t addr, int len)
{
 struct mwl8k_rxd_ap *rxd = _rxd;

 rxd->pkt_len = cpu_to_le16(len);
 rxd->pkt_phys_addr = cpu_to_le32(addr);
 wmb();
 rxd->rx_ctrl = 0;
}
