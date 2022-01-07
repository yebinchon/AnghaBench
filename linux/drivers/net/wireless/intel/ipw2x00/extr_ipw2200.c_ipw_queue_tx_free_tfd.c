
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * chunk_len; int * chunk_ptr; int num_chunks; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {scalar_t__ message_type; } ;
struct tfd_frame {TYPE_3__ u; TYPE_1__ control_flags; } ;
struct pci_dev {int dummy; } ;
struct ipw_priv {struct pci_dev* pci_dev; } ;
struct TYPE_8__ {size_t last_used; } ;
struct clx2_tx_queue {TYPE_4__ q; int ** txb; struct tfd_frame* bd; } ;


 int IPW_ERROR (char*,int) ;
 int NUM_TFD_CHUNKS ;
 int PCI_DMA_TODEVICE ;
 scalar_t__ TX_HOST_COMMAND_TYPE ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int libipw_txb_free (int *) ;
 int pci_unmap_single (struct pci_dev*,int,int ,int ) ;

__attribute__((used)) static void ipw_queue_tx_free_tfd(struct ipw_priv *priv,
      struct clx2_tx_queue *txq)
{
 struct tfd_frame *bd = &txq->bd[txq->q.last_used];
 struct pci_dev *dev = priv->pci_dev;
 int i;


 if (bd->control_flags.message_type == TX_HOST_COMMAND_TYPE)

  return;


 if (le32_to_cpu(bd->u.data.num_chunks) > NUM_TFD_CHUNKS) {
  IPW_ERROR("Too many chunks: %i\n",
     le32_to_cpu(bd->u.data.num_chunks));

  return;
 }


 for (i = 0; i < le32_to_cpu(bd->u.data.num_chunks); i++) {
  pci_unmap_single(dev, le32_to_cpu(bd->u.data.chunk_ptr[i]),
     le16_to_cpu(bd->u.data.chunk_len[i]),
     PCI_DMA_TODEVICE);
  if (txq->txb[txq->q.last_used]) {
   libipw_txb_free(txq->txb[txq->q.last_used]);
   txq->txb[txq->q.last_used] = ((void*)0);
  }
 }
}
