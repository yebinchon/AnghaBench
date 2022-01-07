
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hns3_nic_priv {unsigned int vector_num; TYPE_3__* netdev; struct hns3_enet_tqp_vector* tqp_vector; } ;
struct TYPE_5__ {scalar_t__ ring; } ;
struct TYPE_4__ {scalar_t__ ring; } ;
struct hns3_enet_tqp_vector {scalar_t__ irq_init_flag; char* name; int affinity_mask; int vector_irq; TYPE_2__ tx_group; TYPE_1__ rx_group; } ;
struct TYPE_6__ {char* name; } ;


 int HNAE3_INT_NAME_LEN ;
 scalar_t__ HNS3_VECTOR_INITED ;
 int hns3_irq_handle ;
 int hns3_nic_uninit_irq (struct hns3_nic_priv*) ;
 int irq_set_affinity_hint (int ,int *) ;
 int netdev_err (TYPE_3__*,char*,int ) ;
 int request_irq (int ,int ,int ,char*,struct hns3_enet_tqp_vector*) ;
 int snprintf (char*,int,char*,char*,char*,int ) ;

__attribute__((used)) static int hns3_nic_init_irq(struct hns3_nic_priv *priv)
{
 struct hns3_enet_tqp_vector *tqp_vectors;
 int txrx_int_idx = 0;
 int rx_int_idx = 0;
 int tx_int_idx = 0;
 unsigned int i;
 int ret;

 for (i = 0; i < priv->vector_num; i++) {
  tqp_vectors = &priv->tqp_vector[i];

  if (tqp_vectors->irq_init_flag == HNS3_VECTOR_INITED)
   continue;

  if (tqp_vectors->tx_group.ring && tqp_vectors->rx_group.ring) {
   snprintf(tqp_vectors->name, HNAE3_INT_NAME_LEN - 1,
     "%s-%s-%d", priv->netdev->name, "TxRx",
     txrx_int_idx++);
   txrx_int_idx++;
  } else if (tqp_vectors->rx_group.ring) {
   snprintf(tqp_vectors->name, HNAE3_INT_NAME_LEN - 1,
     "%s-%s-%d", priv->netdev->name, "Rx",
     rx_int_idx++);
  } else if (tqp_vectors->tx_group.ring) {
   snprintf(tqp_vectors->name, HNAE3_INT_NAME_LEN - 1,
     "%s-%s-%d", priv->netdev->name, "Tx",
     tx_int_idx++);
  } else {

   continue;
  }

  tqp_vectors->name[HNAE3_INT_NAME_LEN - 1] = '\0';

  ret = request_irq(tqp_vectors->vector_irq, hns3_irq_handle, 0,
      tqp_vectors->name, tqp_vectors);
  if (ret) {
   netdev_err(priv->netdev, "request irq(%d) fail\n",
       tqp_vectors->vector_irq);
   hns3_nic_uninit_irq(priv);
   return ret;
  }

  irq_set_affinity_hint(tqp_vectors->vector_irq,
          &tqp_vectors->affinity_mask);

  tqp_vectors->irq_init_flag = HNS3_VECTOR_INITED;
 }

 return 0;
}
