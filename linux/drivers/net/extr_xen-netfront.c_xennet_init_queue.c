
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netfront_queue {int id; int gref_tx_head; int gref_rx_head; void** grant_rx_ref; int ** rx_skbs; int ** grant_tx_page; void** grant_tx_ref; int * tx_skbs; scalar_t__ tx_skb_freelist; int name; TYPE_2__* info; int rx_refill_timer; int rx_lock; int tx_lock; } ;
struct TYPE_4__ {TYPE_1__* xbdev; } ;
struct TYPE_3__ {int nodename; } ;


 int ENOMEM ;
 void* GRANT_INVALID_REF ;
 unsigned short NET_RX_RING_SIZE ;
 unsigned short NET_TX_RING_SIZE ;
 scalar_t__ gnttab_alloc_grant_references (unsigned short,int *) ;
 int gnttab_free_grant_references (int ) ;
 int pr_alert (char*) ;
 int rx_refill_timeout ;
 int skb_entry_set_link (int *,unsigned short) ;
 int snprintf (int ,int,char*,char*,int) ;
 int spin_lock_init (int *) ;
 char* strrchr (int ,char) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int xennet_init_queue(struct netfront_queue *queue)
{
 unsigned short i;
 int err = 0;
 char *devid;

 spin_lock_init(&queue->tx_lock);
 spin_lock_init(&queue->rx_lock);

 timer_setup(&queue->rx_refill_timer, rx_refill_timeout, 0);

 devid = strrchr(queue->info->xbdev->nodename, '/') + 1;
 snprintf(queue->name, sizeof(queue->name), "vif%s-q%u",
   devid, queue->id);


 queue->tx_skb_freelist = 0;
 for (i = 0; i < NET_TX_RING_SIZE; i++) {
  skb_entry_set_link(&queue->tx_skbs[i], i+1);
  queue->grant_tx_ref[i] = GRANT_INVALID_REF;
  queue->grant_tx_page[i] = ((void*)0);
 }


 for (i = 0; i < NET_RX_RING_SIZE; i++) {
  queue->rx_skbs[i] = ((void*)0);
  queue->grant_rx_ref[i] = GRANT_INVALID_REF;
 }


 if (gnttab_alloc_grant_references(NET_TX_RING_SIZE,
       &queue->gref_tx_head) < 0) {
  pr_alert("can't alloc tx grant refs\n");
  err = -ENOMEM;
  goto exit;
 }


 if (gnttab_alloc_grant_references(NET_RX_RING_SIZE,
       &queue->gref_rx_head) < 0) {
  pr_alert("can't alloc rx grant refs\n");
  err = -ENOMEM;
  goto exit_free_tx;
 }

 return 0;

 exit_free_tx:
 gnttab_free_grant_references(queue->gref_tx_head);
 exit:
 return err;
}
