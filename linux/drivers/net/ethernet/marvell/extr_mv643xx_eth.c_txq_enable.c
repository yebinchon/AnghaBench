
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_queue {int index; } ;
struct mv643xx_eth_private {int dummy; } ;


 int TXQ_COMMAND ;
 struct mv643xx_eth_private* txq_to_mp (struct tx_queue*) ;
 int wrlp (struct mv643xx_eth_private*,int ,int) ;

__attribute__((used)) static void txq_enable(struct tx_queue *txq)
{
 struct mv643xx_eth_private *mp = txq_to_mp(txq);
 wrlp(mp, TXQ_COMMAND, 1 << txq->index);
}
