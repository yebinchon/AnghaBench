
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int command; } ;
struct tx_cmd {TYPE_3__ cmd; int dma_addr; struct sk_buff* skb; } ;
struct sk_buff {int len; } ;
struct TYPE_7__ {int tx_aborted_errors; int tx_errors; } ;
struct TYPE_6__ {int parent; } ;
struct net_device {TYPE_2__ stats; TYPE_1__ dev; } ;
struct i596_scb {int dummy; } ;
struct i596_private {TYPE_4__* dma; int cmd_backlog; struct i596_cmd* cmd_head; } ;
struct i596_cmd {void* b_next; struct i596_cmd* v_next; int command; } ;
struct TYPE_10__ {void* cmd; } ;
struct TYPE_9__ {TYPE_5__ scb; } ;



 int DMA_TO_DEVICE ;
 int DMA_WBACK (struct net_device*,TYPE_5__*,int) ;
 int DMA_WBACK_INV (struct net_device*,struct i596_cmd*,int) ;
 void* I596_NULL ;
 int SWAP16 (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int wait_cmd (struct net_device*,TYPE_4__*,int,char*) ;

__attribute__((used)) static inline void i596_cleanup_cmd(struct net_device *dev, struct i596_private *lp)
{
 struct i596_cmd *ptr;

 while (lp->cmd_head != ((void*)0)) {
  ptr = lp->cmd_head;
  lp->cmd_head = ptr->v_next;
  lp->cmd_backlog--;

  switch (SWAP16(ptr->command) & 0x7) {
  case 128:
   {
    struct tx_cmd *tx_cmd = (struct tx_cmd *) ptr;
    struct sk_buff *skb = tx_cmd->skb;
    dma_unmap_single(dev->dev.parent,
       tx_cmd->dma_addr,
       skb->len, DMA_TO_DEVICE);

    dev_kfree_skb(skb);

    dev->stats.tx_errors++;
    dev->stats.tx_aborted_errors++;

    ptr->v_next = ((void*)0);
    ptr->b_next = I596_NULL;
    tx_cmd->cmd.command = 0;
    break;
   }
  default:
   ptr->v_next = ((void*)0);
   ptr->b_next = I596_NULL;
  }
  DMA_WBACK_INV(dev, ptr, sizeof(struct i596_cmd));
 }

 wait_cmd(dev, lp->dma, 100, "i596_cleanup_cmd timed out");
 lp->dma->scb.cmd = I596_NULL;
 DMA_WBACK(dev, &(lp->dma->scb), sizeof(struct i596_scb));
}
