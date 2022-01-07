
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_rx_queue {struct slic_rx_buffer* rxbuffs; int len; scalar_t__ put_idx; scalar_t__ done_idx; } ;
struct slic_rx_buffer {int dummy; } ;
struct slic_device {struct slic_rx_queue rxq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SLIC_NUM_RX_LES ;
 struct slic_rx_buffer* kcalloc (int ,int,int ) ;
 int slic_refill_rx_queue (struct slic_device*,int ) ;

__attribute__((used)) static int slic_init_rx_queue(struct slic_device *sdev)
{
 struct slic_rx_queue *rxq = &sdev->rxq;
 struct slic_rx_buffer *buff;

 rxq->len = SLIC_NUM_RX_LES;
 rxq->done_idx = 0;
 rxq->put_idx = 0;

 buff = kcalloc(rxq->len, sizeof(*buff), GFP_KERNEL);
 if (!buff)
  return -ENOMEM;

 rxq->rxbuffs = buff;
 slic_refill_rx_queue(sdev, GFP_KERNEL);

 return 0;
}
