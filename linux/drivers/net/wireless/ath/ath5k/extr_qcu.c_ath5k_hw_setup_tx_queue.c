
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ath5k_txq_info {unsigned int tqi_subtype; int tqi_type; } ;
struct TYPE_4__ {int q_tx_num; } ;
struct TYPE_5__ {TYPE_1__ cap_queues; } ;
struct ath5k_hw {int ah_txq_status; TYPE_3__* ah_txq; TYPE_2__ ah_capabilities; } ;
typedef enum ath5k_tx_queue { ____Placeholder_ath5k_tx_queue } ath5k_tx_queue ;
struct TYPE_6__ {int tqi_type; } ;


 int AR5K_Q_ENABLE_BITS (int ,unsigned int) ;



 unsigned int AR5K_TX_QUEUE_ID_BEACON ;
 unsigned int AR5K_TX_QUEUE_ID_CAB ;
 unsigned int AR5K_TX_QUEUE_ID_NOQCU_BEACON ;
 unsigned int AR5K_TX_QUEUE_ID_NOQCU_DATA ;
 unsigned int AR5K_TX_QUEUE_ID_UAPSD ;

 int EINVAL ;
 int ath5k_hw_set_tx_queueprops (struct ath5k_hw*,unsigned int,struct ath5k_txq_info*) ;
 int memset (TYPE_3__*,int ,int) ;

int
ath5k_hw_setup_tx_queue(struct ath5k_hw *ah, enum ath5k_tx_queue queue_type,
  struct ath5k_txq_info *queue_info)
{
 unsigned int queue;
 int ret;





 if (ah->ah_capabilities.cap_queues.q_tx_num == 2) {
  switch (queue_type) {
  case 129:
   queue = AR5K_TX_QUEUE_ID_NOQCU_DATA;
   break;
  case 131:
  case 130:
   queue = AR5K_TX_QUEUE_ID_NOQCU_BEACON;
   break;
  default:
   return -EINVAL;
  }
 } else {
  switch (queue_type) {
  case 129:
   queue = queue_info->tqi_subtype;
   break;
  case 128:
   queue = AR5K_TX_QUEUE_ID_UAPSD;
   break;
  case 131:
   queue = AR5K_TX_QUEUE_ID_BEACON;
   break;
  case 130:
   queue = AR5K_TX_QUEUE_ID_CAB;
   break;
  default:
   return -EINVAL;
  }
 }




 memset(&ah->ah_txq[queue], 0, sizeof(struct ath5k_txq_info));
 ah->ah_txq[queue].tqi_type = queue_type;

 if (queue_info != ((void*)0)) {
  queue_info->tqi_type = queue_type;
  ret = ath5k_hw_set_tx_queueprops(ah, queue, queue_info);
  if (ret)
   return ret;
 }






 AR5K_Q_ENABLE_BITS(ah->ah_txq_status, queue);

 return queue;
}
