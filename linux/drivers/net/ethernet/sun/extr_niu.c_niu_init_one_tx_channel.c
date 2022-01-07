
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tx_ring_info {int tx_channel; int max_burst; int descr_dma; int pending; int mbox_dma; scalar_t__ last_pkt_cnt; } ;
struct niu {int dev; } ;


 int EINVAL ;
 int TXC_DMA_MAX (int) ;
 int TXDMA_MBH (int) ;
 int TXDMA_MBH_MBADDR ;
 int TXDMA_MBL (int) ;
 int TXDMA_MBL_MBADDR ;
 int TX_CS (int) ;
 int TX_ENT_MSK (int) ;
 int TX_RNG_CFIG (int) ;
 int TX_RNG_CFIG_LEN_SHIFT ;
 int TX_RNG_CFIG_STADDR ;
 int TX_RNG_CFIG_STADDR_BASE ;
 int netdev_err (int ,char*,int,unsigned long long) ;
 int niu_tx_channel_lpage_init (struct niu*,int) ;
 int niu_tx_channel_reset (struct niu*,int) ;
 int niu_tx_channel_stop (struct niu*,int) ;
 int nw64 (int ,int) ;

__attribute__((used)) static int niu_init_one_tx_channel(struct niu *np, struct tx_ring_info *rp)
{
 int err, channel = rp->tx_channel;
 u64 val, ring_len;

 err = niu_tx_channel_stop(np, channel);
 if (err)
  return err;

 err = niu_tx_channel_reset(np, channel);
 if (err)
  return err;

 err = niu_tx_channel_lpage_init(np, channel);
 if (err)
  return err;

 nw64(TXC_DMA_MAX(channel), rp->max_burst);
 nw64(TX_ENT_MSK(channel), 0);

 if (rp->descr_dma & ~(TX_RNG_CFIG_STADDR_BASE |
         TX_RNG_CFIG_STADDR)) {
  netdev_err(np->dev, "TX ring channel %d DMA addr (%llx) is not aligned\n",
      channel, (unsigned long long)rp->descr_dma);
  return -EINVAL;
 }






 ring_len = (rp->pending / 8);

 val = ((ring_len << TX_RNG_CFIG_LEN_SHIFT) |
        rp->descr_dma);
 nw64(TX_RNG_CFIG(channel), val);

 if (((rp->mbox_dma >> 32) & ~TXDMA_MBH_MBADDR) ||
     ((u32)rp->mbox_dma & ~TXDMA_MBL_MBADDR)) {
  netdev_err(np->dev, "TX ring channel %d MBOX addr (%llx) has invalid bits\n",
       channel, (unsigned long long)rp->mbox_dma);
  return -EINVAL;
 }
 nw64(TXDMA_MBH(channel), rp->mbox_dma >> 32);
 nw64(TXDMA_MBL(channel), rp->mbox_dma & TXDMA_MBL_MBADDR);

 nw64(TX_CS(channel), 0);

 rp->last_pkt_cnt = 0;

 return 0;
}
