
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct net_device {int dummy; } ;
struct fza_private {scalar_t__ state_chg_flag; int ** rx_skbuff; scalar_t__* rx_dma; int bdev; int name; TYPE_1__* regs; int state_chg_wait; int lock; scalar_t__ state; int reset_timer; } ;
struct TYPE_2__ {int status; int control_a; } ;


 int DMA_FROM_DEVICE ;
 int EIO ;
 int FZA_CONTROL_A_SHUT ;
 int FZA_RING_RX_SIZE ;
 int FZA_RX_BUFFER_SIZE ;
 scalar_t__ FZA_STATE_UNINITIALIZED ;
 scalar_t__ FZA_STATUS_GET_STATE (int ) ;
 int HZ ;
 int del_timer_sync (int *) ;
 int dev_kfree_skb (int *) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 struct fza_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pr_debug (char*,int ,...) ;
 int pr_err (char*,int ,scalar_t__) ;
 int readw_o (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 long wait_event_timeout (int ,scalar_t__,int) ;
 int writew_o (int ,int *) ;

__attribute__((used)) static int fza_close(struct net_device *dev)
{
 struct fza_private *fp = netdev_priv(dev);
 unsigned long flags;
 uint state;
 long t;
 int i;

 netif_stop_queue(dev);
 pr_debug("%s: queue stopped\n", fp->name);

 del_timer_sync(&fp->reset_timer);
 spin_lock_irqsave(&fp->lock, flags);
 fp->state = FZA_STATE_UNINITIALIZED;
 fp->state_chg_flag = 0;

 writew_o(FZA_CONTROL_A_SHUT, &fp->regs->control_a);
 readw_o(&fp->regs->control_a);
 spin_unlock_irqrestore(&fp->lock, flags);


 t = wait_event_timeout(fp->state_chg_wait, fp->state_chg_flag,
          15 * HZ);
 state = FZA_STATUS_GET_STATE(readw_o(&fp->regs->status));
 if (fp->state_chg_flag == 0) {
  pr_err("%s: SHUT timed out!, state %x\n", fp->name, state);
  return -EIO;
 }
 if (state != FZA_STATE_UNINITIALIZED) {
  pr_err("%s: SHUT failed!, state %x\n", fp->name, state);
  return -EIO;
 }
 pr_debug("%s: SHUT: %lums elapsed\n", fp->name,
   (15 * HZ - t) * 1000 / HZ);

 for (i = 0; i < FZA_RING_RX_SIZE; i++)
  if (fp->rx_skbuff[i]) {
   dma_unmap_single(fp->bdev, fp->rx_dma[i],
      FZA_RX_BUFFER_SIZE, DMA_FROM_DEVICE);
   dev_kfree_skb(fp->rx_skbuff[i]);
   fp->rx_dma[i] = 0;
   fp->rx_skbuff[i] = ((void*)0);
  }

 return 0;
}
