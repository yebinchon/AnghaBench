
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xdp_frame {int len; int data; } ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct bpf_prog {int dummy; } ;
struct bnxt_tx_ring_info {int tx_prod; int tx_db; } ;
struct bnxt {int tx_nr_rings_xdp; TYPE_1__** bnapi; struct bnxt_tx_ring_info* tx_ring; int state; struct pci_dev* pdev; int xdp_prog; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int flags; } ;


 int BNXT_NAPI_FLAG_XDP ;
 int BNXT_STATE_OPEN ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 struct bpf_prog* READ_ONCE (int ) ;
 int XDP_XMIT_FLUSH ;
 int __bnxt_xmit_xdp_redirect (struct bnxt*,struct bnxt_tx_ring_info*,int ,int ,struct xdp_frame*) ;
 int bnxt_db_write (struct bnxt*,int *,int ) ;
 int bnxt_tx_avail (struct bnxt*,struct bnxt_tx_ring_info*) ;
 int dma_map_single (int *,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 int smp_processor_id () ;
 int test_bit (int ,int *) ;
 int wmb () ;
 int xdp_return_frame_rx_napi (struct xdp_frame*) ;

int bnxt_xdp_xmit(struct net_device *dev, int num_frames,
    struct xdp_frame **frames, u32 flags)
{
 struct bnxt *bp = netdev_priv(dev);
 struct bpf_prog *xdp_prog = READ_ONCE(bp->xdp_prog);
 struct pci_dev *pdev = bp->pdev;
 struct bnxt_tx_ring_info *txr;
 dma_addr_t mapping;
 int drops = 0;
 int ring;
 int i;

 if (!test_bit(BNXT_STATE_OPEN, &bp->state) ||
     !bp->tx_nr_rings_xdp ||
     !xdp_prog)
  return -EINVAL;

 ring = smp_processor_id() % bp->tx_nr_rings_xdp;
 txr = &bp->tx_ring[ring];

 for (i = 0; i < num_frames; i++) {
  struct xdp_frame *xdp = frames[i];

  if (!txr || !bnxt_tx_avail(bp, txr) ||
      !(bp->bnapi[ring]->flags & BNXT_NAPI_FLAG_XDP)) {
   xdp_return_frame_rx_napi(xdp);
   drops++;
   continue;
  }

  mapping = dma_map_single(&pdev->dev, xdp->data, xdp->len,
      DMA_TO_DEVICE);

  if (dma_mapping_error(&pdev->dev, mapping)) {
   xdp_return_frame_rx_napi(xdp);
   drops++;
   continue;
  }
  __bnxt_xmit_xdp_redirect(bp, txr, mapping, xdp->len, xdp);
 }

 if (flags & XDP_XMIT_FLUSH) {

  wmb();
  bnxt_db_write(bp, &txr->tx_db, txr->tx_prod);
 }

 return num_frames - drops;
}
