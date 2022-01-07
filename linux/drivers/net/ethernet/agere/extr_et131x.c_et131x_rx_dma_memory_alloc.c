
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct rx_status_block {int dummy; } ;
struct rx_ring {int psr_entries; size_t ps_ring_physaddr; size_t rx_status_bus; int recv_list; int num_rfd; void* rx_status_block; void* ps_ring_virtaddr; struct fbr_lookup** fbr; } ;
struct pkt_stat_desc {int dummy; } ;
struct fbr_lookup {int buffsize; int num_entries; size_t ring_physaddr; size_t* mem_physaddrs; size_t** virt; int * bus_low; int * bus_high; void** mem_virtaddrs; void* ring_virtaddr; } ;
struct fbr_desc {int dummy; } ;
struct et131x_adapter {int registry_jumbo_packet; TYPE_1__* pdev; struct rx_ring rx_ring; } ;
typedef size_t dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 size_t FBR_CHUNKS ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NIC_DEFAULT_NUM_RFD ;
 size_t NUM_FBRS ;
 int dev_err (int *,char*,...) ;
 void* dma_alloc_coherent (int *,int,size_t*,int ) ;
 void* kzalloc (int,int ) ;
 int lower_32_bits (size_t) ;
 int upper_32_bits (size_t) ;

__attribute__((used)) static int et131x_rx_dma_memory_alloc(struct et131x_adapter *adapter)
{
 u8 id;
 u32 i, j;
 u32 bufsize;
 u32 psr_size;
 u32 fbr_chunksize;
 struct rx_ring *rx_ring = &adapter->rx_ring;
 struct fbr_lookup *fbr;


 rx_ring->fbr[0] = kzalloc(sizeof(*fbr), GFP_KERNEL);
 if (rx_ring->fbr[0] == ((void*)0))
  return -ENOMEM;
 rx_ring->fbr[1] = kzalloc(sizeof(*fbr), GFP_KERNEL);
 if (rx_ring->fbr[1] == ((void*)0))
  return -ENOMEM;
 if (adapter->registry_jumbo_packet < 2048) {
  rx_ring->fbr[0]->buffsize = 256;
  rx_ring->fbr[0]->num_entries = 512;
  rx_ring->fbr[1]->buffsize = 2048;
  rx_ring->fbr[1]->num_entries = 512;
 } else if (adapter->registry_jumbo_packet < 4096) {
  rx_ring->fbr[0]->buffsize = 512;
  rx_ring->fbr[0]->num_entries = 1024;
  rx_ring->fbr[1]->buffsize = 4096;
  rx_ring->fbr[1]->num_entries = 512;
 } else {
  rx_ring->fbr[0]->buffsize = 1024;
  rx_ring->fbr[0]->num_entries = 768;
  rx_ring->fbr[1]->buffsize = 16384;
  rx_ring->fbr[1]->num_entries = 128;
 }

 rx_ring->psr_entries = rx_ring->fbr[0]->num_entries +
          rx_ring->fbr[1]->num_entries;

 for (id = 0; id < NUM_FBRS; id++) {
  fbr = rx_ring->fbr[id];

  bufsize = sizeof(struct fbr_desc) * fbr->num_entries;
  fbr->ring_virtaddr = dma_alloc_coherent(&adapter->pdev->dev,
       bufsize,
       &fbr->ring_physaddr,
       GFP_KERNEL);
  if (!fbr->ring_virtaddr) {
   dev_err(&adapter->pdev->dev,
    "Cannot alloc memory for Free Buffer Ring %d\n",
    id);
   return -ENOMEM;
  }
 }

 for (id = 0; id < NUM_FBRS; id++) {
  fbr = rx_ring->fbr[id];
  fbr_chunksize = (FBR_CHUNKS * fbr->buffsize);

  for (i = 0; i < fbr->num_entries / FBR_CHUNKS; i++) {
   dma_addr_t fbr_physaddr;

   fbr->mem_virtaddrs[i] = dma_alloc_coherent(
     &adapter->pdev->dev, fbr_chunksize,
     &fbr->mem_physaddrs[i],
     GFP_KERNEL);

   if (!fbr->mem_virtaddrs[i]) {
    dev_err(&adapter->pdev->dev,
     "Could not alloc memory\n");
    return -ENOMEM;
   }


   fbr_physaddr = fbr->mem_physaddrs[i];

   for (j = 0; j < FBR_CHUNKS; j++) {
    u32 k = (i * FBR_CHUNKS) + j;




    fbr->virt[k] = (u8 *)fbr->mem_virtaddrs[i] +
         (j * fbr->buffsize);




    fbr->bus_high[k] = upper_32_bits(fbr_physaddr);
    fbr->bus_low[k] = lower_32_bits(fbr_physaddr);
    fbr_physaddr += fbr->buffsize;
   }
  }
 }


 psr_size = sizeof(struct pkt_stat_desc) * rx_ring->psr_entries;

 rx_ring->ps_ring_virtaddr = dma_alloc_coherent(&adapter->pdev->dev,
        psr_size,
        &rx_ring->ps_ring_physaddr,
        GFP_KERNEL);

 if (!rx_ring->ps_ring_virtaddr) {
  dev_err(&adapter->pdev->dev,
   "Cannot alloc memory for Packet Status Ring\n");
  return -ENOMEM;
 }


 rx_ring->rx_status_block = dma_alloc_coherent(&adapter->pdev->dev,
         sizeof(struct rx_status_block),
         &rx_ring->rx_status_bus,
         GFP_KERNEL);
 if (!rx_ring->rx_status_block) {
  dev_err(&adapter->pdev->dev,
   "Cannot alloc memory for Status Block\n");
  return -ENOMEM;
 }
 rx_ring->num_rfd = NIC_DEFAULT_NUM_RFD;




 INIT_LIST_HEAD(&rx_ring->recv_list);
 return 0;
}
