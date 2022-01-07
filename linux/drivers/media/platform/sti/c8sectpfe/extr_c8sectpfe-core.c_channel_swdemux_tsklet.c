
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct channel_info {unsigned long back_buffer_busaddr; size_t demux_mapping; scalar_t__ irec; int tsin_id; scalar_t__ back_buffer_aligned; struct c8sectpfei* fei; } ;
struct c8sectpfei {TYPE_2__** c8sectpfe; int dev; } ;
struct TYPE_4__ {TYPE_1__* demux; } ;
struct TYPE_3__ {int dvb_demux; } ;


 int DMA_FROM_DEVICE ;
 scalar_t__ DMA_PRDS_BUSRP_TP (int ) ;
 scalar_t__ DMA_PRDS_BUSWP_TP (int ) ;
 unsigned long FEI_BUFFER_SIZE ;
 int PACKET_SIZE ;
 int dev_dbg (int ,char*,int ,struct channel_info*,int,int *,int,unsigned long,unsigned long) ;
 int dma_sync_single_for_cpu (int ,unsigned long,int,int ) ;
 int dvb_dmx_swfilter_packets (int *,int *,int) ;
 unsigned long readl (scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void channel_swdemux_tsklet(unsigned long data)
{
 struct channel_info *channel = (struct channel_info *)data;
 struct c8sectpfei *fei;
 unsigned long wp, rp;
 int pos, num_packets, n, size;
 u8 *buf;

 if (unlikely(!channel || !channel->irec))
  return;

 fei = channel->fei;

 wp = readl(channel->irec + DMA_PRDS_BUSWP_TP(0));
 rp = readl(channel->irec + DMA_PRDS_BUSRP_TP(0));

 pos = rp - channel->back_buffer_busaddr;


 if (wp < rp)
  wp = channel->back_buffer_busaddr + FEI_BUFFER_SIZE;

 size = wp - rp;
 num_packets = size / PACKET_SIZE;


 dma_sync_single_for_cpu(fei->dev,
    rp,
    size,
    DMA_FROM_DEVICE);

 buf = (u8 *) channel->back_buffer_aligned;

 dev_dbg(fei->dev,
  "chan=%d channel=%p num_packets = %d, buf = %p, pos = 0x%x\n\trp=0x%lx, wp=0x%lx\n",
  channel->tsin_id, channel, num_packets, buf, pos, rp, wp);

 for (n = 0; n < num_packets; n++) {
  dvb_dmx_swfilter_packets(
   &fei->c8sectpfe[0]->
    demux[channel->demux_mapping].dvb_demux,
   &buf[pos], 1);

  pos += PACKET_SIZE;
 }


 if (wp == (channel->back_buffer_busaddr + FEI_BUFFER_SIZE))
  writel(channel->back_buffer_busaddr, channel->irec +
   DMA_PRDS_BUSRP_TP(0));
 else
  writel(wp, channel->irec + DMA_PRDS_BUSRP_TP(0));
}
