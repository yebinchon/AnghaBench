
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring_info {int rx_channel; } ;
struct niu {int dummy; } ;


 int RX_DMA_CTL_STAT (int) ;
 int RX_DMA_ENT_MSK (int) ;
 int RX_DMA_ENT_MSK_ALL ;
 int niu_enable_rx_channel (struct niu*,int,int ) ;
 int niu_rx_channel_reset (struct niu*,int) ;
 int nw64 (int ,int ) ;

__attribute__((used)) static void niu_reset_one_rx_channel(struct niu *np, struct rx_ring_info *rp)
{
 int channel = rp->rx_channel;

 (void) niu_rx_channel_reset(np, channel);
 nw64(RX_DMA_ENT_MSK(channel), RX_DMA_ENT_MSK_ALL);
 nw64(RX_DMA_CTL_STAT(channel), 0);
 (void) niu_enable_rx_channel(np, channel, 0);
}
