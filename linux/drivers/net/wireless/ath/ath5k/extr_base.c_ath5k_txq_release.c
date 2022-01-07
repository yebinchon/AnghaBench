
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_txq {int setup; int qnum; } ;
struct ath5k_hw {struct ath5k_txq* txqs; } ;


 unsigned int ARRAY_SIZE (struct ath5k_txq*) ;
 int ath5k_hw_release_tx_queue (struct ath5k_hw*,int ) ;

__attribute__((used)) static void
ath5k_txq_release(struct ath5k_hw *ah)
{
 struct ath5k_txq *txq = ah->txqs;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(ah->txqs); i++, txq++)
  if (txq->setup) {
   ath5k_hw_release_tx_queue(ah, txq->qnum);
   txq->setup = 0;
  }
}
