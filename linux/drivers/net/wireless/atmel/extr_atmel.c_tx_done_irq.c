
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {int tx_desc_count; scalar_t__ tx_buff_pos; scalar_t__ tx_buff_size; } ;
struct atmel_private {int tx_desc_head; scalar_t__ tx_buff_head; TYPE_3__* dev; TYPE_1__ host_info; int tx_desc_free; int tx_free_mem; } ;
struct TYPE_5__ {int tx_errors; int tx_packets; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;


 int TX_DESC_FLAGS_OFFSET ;
 int TX_DESC_PACKET_TYPE_OFFSET ;
 int TX_DESC_SIZE_OFFSET ;
 int TX_DESC_STATUS_OFFSET ;
 scalar_t__ TX_DONE ;
 scalar_t__ TX_PACKET_TYPE_DATA ;
 scalar_t__ TX_STATUS_SUCCESS ;
 scalar_t__ atmel_rmem16 (struct atmel_private*,int ) ;
 scalar_t__ atmel_rmem8 (struct atmel_private*,int ) ;
 int atmel_tx (struct atmel_private*,int ,int) ;
 int atmel_wmem8 (struct atmel_private*,int ,int ) ;
 int netif_wake_queue (TYPE_3__*) ;

__attribute__((used)) static void tx_done_irq(struct atmel_private *priv)
{
 int i;

 for (i = 0;
      atmel_rmem8(priv, atmel_tx(priv, TX_DESC_FLAGS_OFFSET, priv->tx_desc_head)) == TX_DONE &&
       i < priv->host_info.tx_desc_count;
      i++) {
  u8 status = atmel_rmem8(priv, atmel_tx(priv, TX_DESC_STATUS_OFFSET, priv->tx_desc_head));
  u16 msdu_size = atmel_rmem16(priv, atmel_tx(priv, TX_DESC_SIZE_OFFSET, priv->tx_desc_head));
  u8 type = atmel_rmem8(priv, atmel_tx(priv, TX_DESC_PACKET_TYPE_OFFSET, priv->tx_desc_head));

  atmel_wmem8(priv, atmel_tx(priv, TX_DESC_FLAGS_OFFSET, priv->tx_desc_head), 0);

  priv->tx_free_mem += msdu_size;
  priv->tx_desc_free++;

  if (priv->tx_buff_head + msdu_size > (priv->host_info.tx_buff_pos + priv->host_info.tx_buff_size))
   priv->tx_buff_head = 0;
  else
   priv->tx_buff_head += msdu_size;

  if (priv->tx_desc_head < (priv->host_info.tx_desc_count - 1))
   priv->tx_desc_head++ ;
  else
   priv->tx_desc_head = 0;

  if (type == TX_PACKET_TYPE_DATA) {
   if (status == TX_STATUS_SUCCESS)
    priv->dev->stats.tx_packets++;
   else
    priv->dev->stats.tx_errors++;
   netif_wake_queue(priv->dev);
  }
 }
}
