
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct peak_canfd_priv {int dummy; } ;
struct pciefd_tx_link {void* laddr_hi; void* laddr_lo; void* type; void* size; } ;
struct pciefd_page {int offset; int size; int lbase; struct pciefd_tx_link* vbase; } ;
struct pciefd_can {int tx_page_index; int tx_pages_free; int tx_lock; struct pciefd_page* tx_pages; } ;


 int CANFD_MSG_LNK_TX ;
 int PCIEFD_TX_PAGE_COUNT ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void *pciefd_alloc_tx_msg(struct peak_canfd_priv *ucan, u16 msg_size,
     int *room_left)
{
 struct pciefd_can *priv = (struct pciefd_can *)ucan;
 struct pciefd_page *page = priv->tx_pages + priv->tx_page_index;
 unsigned long flags;
 void *msg;

 spin_lock_irqsave(&priv->tx_lock, flags);

 if (page->offset + msg_size > page->size) {
  struct pciefd_tx_link *lk;


  if (!priv->tx_pages_free) {
   spin_unlock_irqrestore(&priv->tx_lock, flags);


   return ((void*)0);
  }

  priv->tx_pages_free--;


  lk = page->vbase + page->offset;


  priv->tx_page_index = (priv->tx_page_index + 1) %
          PCIEFD_TX_PAGE_COUNT;
  page = priv->tx_pages + priv->tx_page_index;


  lk->size = cpu_to_le16(sizeof(*lk));
  lk->type = cpu_to_le16(CANFD_MSG_LNK_TX);
  lk->laddr_lo = cpu_to_le32(page->lbase);




  lk->laddr_hi = 0;


  page->offset = 0;
 }

 *room_left = priv->tx_pages_free * page->size;

 spin_unlock_irqrestore(&priv->tx_lock, flags);

 msg = page->vbase + page->offset;


 *room_left += page->size - (page->offset + msg_size);

 return msg;
}
