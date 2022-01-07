
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {struct ath9k_tx_queue_info* txq; } ;
struct ath_common {int dummy; } ;
struct ath9k_tx_queue_info {int tqi_subtype; int tqi_type; int tqi_physCompBuf; } ;
typedef enum ath9k_tx_queue { ____Placeholder_ath9k_tx_queue } ath9k_tx_queue ;


 int ATH9K_NUM_TX_QUEUES ;



 int ATH9K_TX_QUEUE_INACTIVE ;


 int QUEUE ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_set_txq_props (struct ath_hw*,int,struct ath9k_tx_queue_info const*) ;
 int ath_dbg (struct ath_common*,int ,char*,int) ;
 int ath_err (struct ath_common*,char*,int) ;
 int memset (struct ath9k_tx_queue_info*,int ,int) ;

int ath9k_hw_setuptxqueue(struct ath_hw *ah, enum ath9k_tx_queue type,
     const struct ath9k_tx_queue_info *qinfo)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_tx_queue_info *qi;
 int q;

 switch (type) {
 case 132:
  q = ATH9K_NUM_TX_QUEUES - 1;
  break;
 case 131:
  q = ATH9K_NUM_TX_QUEUES - 2;
  break;
 case 129:
  q = 1;
  break;
 case 128:
  q = ATH9K_NUM_TX_QUEUES - 3;
  break;
 case 130:
  q = qinfo->tqi_subtype;
  break;
 default:
  ath_err(common, "Invalid TX queue type: %u\n", type);
  return -1;
 }

 ath_dbg(common, QUEUE, "Setup TX queue: %u\n", q);

 qi = &ah->txq[q];
 if (qi->tqi_type != ATH9K_TX_QUEUE_INACTIVE) {
  ath_err(common, "TX queue: %u already active\n", q);
  return -1;
 }
 memset(qi, 0, sizeof(struct ath9k_tx_queue_info));
 qi->tqi_type = type;
 qi->tqi_physCompBuf = qinfo->tqi_physCompBuf;
 (void) ath9k_hw_set_txq_props(ah, q, qinfo);

 return q;
}
