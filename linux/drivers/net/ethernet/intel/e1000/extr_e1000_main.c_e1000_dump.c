
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct e1000_tx_ring {int count; int next_to_use; int next_to_clean; struct e1000_tx_buffer* buffer_info; scalar_t__ desc; } ;
struct e1000_tx_desc {int dummy; } ;
struct e1000_tx_buffer {int skb; scalar_t__ time_stamp; int next_to_watch; int length; scalar_t__ dma; } ;
struct e1000_rx_ring {int count; int next_to_use; int next_to_clean; struct e1000_rx_buffer* buffer_info; scalar_t__ desc; } ;
struct e1000_rx_desc {int dummy; } ;
struct TYPE_3__ {int data; } ;
struct e1000_rx_buffer {TYPE_1__ rxbuf; scalar_t__ dma; } ;
struct TYPE_4__ {scalar_t__ hw_addr; } ;
struct e1000_adapter {TYPE_2__ hw; struct e1000_rx_ring* rx_ring; struct e1000_tx_ring* tx_ring; } ;
typedef int __le64 ;


 struct e1000_rx_desc* E1000_RX_DESC (struct e1000_rx_ring,int) ;
 struct e1000_tx_desc* E1000_TX_DESC (struct e1000_tx_ring,int) ;
 int e1000_regdump (struct e1000_adapter*) ;
 int le64_to_cpu (int ) ;
 int netif_msg_hw (struct e1000_adapter*) ;
 int netif_msg_rx_status (struct e1000_adapter*) ;
 int netif_msg_tx_done (struct e1000_adapter*) ;
 int pr_info (char*,...) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void e1000_dump(struct e1000_adapter *adapter)
{

 struct e1000_tx_ring *tx_ring = adapter->tx_ring;
 struct e1000_rx_ring *rx_ring = adapter->rx_ring;
 int i;

 if (!netif_msg_hw(adapter))
  return;


 e1000_regdump(adapter);


 pr_info("TX Desc ring0 dump\n");
 pr_info("Tc[desc]     [Ce CoCsIpceCoS] [MssHlRSCm0Plen] [bi->dma       ] leng  ntw timestmp         bi->skb\n");
 pr_info("Td[desc]     [address 63:0  ] [VlaPoRSCm1Dlen] [bi->dma       ] leng  ntw timestmp         bi->skb\n");

 if (!netif_msg_tx_done(adapter))
  goto rx_ring_summary;

 for (i = 0; tx_ring->desc && (i < tx_ring->count); i++) {
  struct e1000_tx_desc *tx_desc = E1000_TX_DESC(*tx_ring, i);
  struct e1000_tx_buffer *buffer_info = &tx_ring->buffer_info[i];
  struct my_u { __le64 a; __le64 b; };
  struct my_u *u = (struct my_u *)tx_desc;
  const char *type;

  if (i == tx_ring->next_to_use && i == tx_ring->next_to_clean)
   type = "NTC/U";
  else if (i == tx_ring->next_to_use)
   type = "NTU";
  else if (i == tx_ring->next_to_clean)
   type = "NTC";
  else
   type = "";

  pr_info("T%c[0x%03X]    %016llX %016llX %016llX %04X  %3X %016llX %p %s\n",
   ((le64_to_cpu(u->b) & (1<<20)) ? 'd' : 'c'), i,
   le64_to_cpu(u->a), le64_to_cpu(u->b),
   (u64)buffer_info->dma, buffer_info->length,
   buffer_info->next_to_watch,
   (u64)buffer_info->time_stamp, buffer_info->skb, type);
 }

rx_ring_summary:

 pr_info("\nRX Desc ring dump\n");
 pr_info("R[desc]      [address 63:0  ] [vl er S cks ln] [bi->dma       ] [bi->skb]\n");

 if (!netif_msg_rx_status(adapter))
  goto exit;

 for (i = 0; rx_ring->desc && (i < rx_ring->count); i++) {
  struct e1000_rx_desc *rx_desc = E1000_RX_DESC(*rx_ring, i);
  struct e1000_rx_buffer *buffer_info = &rx_ring->buffer_info[i];
  struct my_u { __le64 a; __le64 b; };
  struct my_u *u = (struct my_u *)rx_desc;
  const char *type;

  if (i == rx_ring->next_to_use)
   type = "NTU";
  else if (i == rx_ring->next_to_clean)
   type = "NTC";
  else
   type = "";

  pr_info("R[0x%03X]     %016llX %016llX %016llX %p %s\n",
   i, le64_to_cpu(u->a), le64_to_cpu(u->b),
   (u64)buffer_info->dma, buffer_info->rxbuf.data, type);
 }



 pr_info("Rx descriptor cache in 64bit format\n");
 for (i = 0x6000; i <= 0x63FF ; i += 0x10) {
  pr_info("R%04X: %08X|%08X %08X|%08X\n",
   i,
   readl(adapter->hw.hw_addr + i+4),
   readl(adapter->hw.hw_addr + i),
   readl(adapter->hw.hw_addr + i+12),
   readl(adapter->hw.hw_addr + i+8));
 }

 pr_info("Tx descriptor cache in 64bit format\n");
 for (i = 0x7000; i <= 0x73FF ; i += 0x10) {
  pr_info("T%04X: %08X|%08X %08X|%08X\n",
   i,
   readl(adapter->hw.hw_addr + i+4),
   readl(adapter->hw.hw_addr + i),
   readl(adapter->hw.hw_addr + i+12),
   readl(adapter->hw.hw_addr + i+8));
 }
exit:
 return;
}
