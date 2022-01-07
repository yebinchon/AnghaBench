
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int available; int entries; scalar_t__ next; scalar_t__ oldest; } ;
struct ipw2100_priv {TYPE_4__ tx_queue; int txq_stat; int tx_free_stat; int tx_free_list; TYPE_3__* tx_buffers; int tx_pend_stat; int tx_pend_list; int fw_pend_stat; int fw_pend_list; } ;
struct TYPE_5__ {int * txb; } ;
struct TYPE_6__ {TYPE_1__ d_struct; } ;
struct TYPE_7__ {int list; TYPE_2__ info; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_STAT (int *) ;
 int IPW_DEBUG_INFO (char*) ;
 int IPW_MEM_HOST_SHARED_TX_QUEUE_BD_BASE ;
 int IPW_MEM_HOST_SHARED_TX_QUEUE_BD_SIZE ;
 int IPW_MEM_HOST_SHARED_TX_QUEUE_READ_INDEX ;
 int IPW_MEM_HOST_SHARED_TX_QUEUE_WRITE_INDEX ;
 int SET_STAT (int *,int) ;
 int TX_PENDED_QUEUE_LENGTH ;
 int bd_queue_initialize (struct ipw2100_priv*,TYPE_4__*,int ,int ,int ,int ) ;
 int libipw_txb_free (int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void ipw2100_tx_initialize(struct ipw2100_priv *priv)
{
 int i;

 IPW_DEBUG_INFO("enter\n");




 INIT_LIST_HEAD(&priv->fw_pend_list);
 INIT_STAT(&priv->fw_pend_stat);




 INIT_LIST_HEAD(&priv->tx_pend_list);
 INIT_LIST_HEAD(&priv->tx_free_list);
 INIT_STAT(&priv->tx_pend_stat);
 INIT_STAT(&priv->tx_free_stat);

 for (i = 0; i < TX_PENDED_QUEUE_LENGTH; i++) {


  if (priv->tx_buffers[i].info.d_struct.txb) {
   libipw_txb_free(priv->tx_buffers[i].info.d_struct.
        txb);
   priv->tx_buffers[i].info.d_struct.txb = ((void*)0);
  }

  list_add_tail(&priv->tx_buffers[i].list, &priv->tx_free_list);
 }

 SET_STAT(&priv->tx_free_stat, i);

 priv->tx_queue.oldest = 0;
 priv->tx_queue.available = priv->tx_queue.entries;
 priv->tx_queue.next = 0;
 INIT_STAT(&priv->txq_stat);
 SET_STAT(&priv->txq_stat, priv->tx_queue.available);

 bd_queue_initialize(priv, &priv->tx_queue,
       IPW_MEM_HOST_SHARED_TX_QUEUE_BD_BASE,
       IPW_MEM_HOST_SHARED_TX_QUEUE_BD_SIZE,
       IPW_MEM_HOST_SHARED_TX_QUEUE_READ_INDEX,
       IPW_MEM_HOST_SHARED_TX_QUEUE_WRITE_INDEX);

 IPW_DEBUG_INFO("exit\n");

}
