
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rx_ring_info {int rx_channel; } ;
struct niu {int dev; } ;


 int EINVAL ;
 int RX_DMA_CTL_STAT (int ) ;
 int RX_DMA_CTL_STAT_CHAN_FATAL ;
 int RX_DMA_CTL_STAT_PORT_FATAL ;
 int RX_DMA_CTL_WRITE_CLEAR_ERRS ;
 int netdev_err (int ,char*,int ,unsigned long long) ;
 int niu_log_rxchan_errors (struct niu*,struct rx_ring_info*,int) ;
 int nr64 (int ) ;
 int nw64 (int ,int) ;

__attribute__((used)) static int niu_rx_error(struct niu *np, struct rx_ring_info *rp)
{
 u64 stat = nr64(RX_DMA_CTL_STAT(rp->rx_channel));
 int err = 0;


 if (stat & (RX_DMA_CTL_STAT_CHAN_FATAL |
      RX_DMA_CTL_STAT_PORT_FATAL))
  err = -EINVAL;

 if (err) {
  netdev_err(np->dev, "RX channel %u error, stat[%llx]\n",
      rp->rx_channel,
      (unsigned long long) stat);

  niu_log_rxchan_errors(np, rp, stat);
 }

 nw64(RX_DMA_CTL_STAT(rp->rx_channel),
      stat & RX_DMA_CTL_WRITE_CLEAR_ERRS);

 return err;
}
