
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_queue {int index; } ;
struct mv643xx_eth_private {int dummy; } ;


 int RXQ_COMMAND ;
 struct mv643xx_eth_private* rxq_to_mp (struct rx_queue*) ;
 int wrlp (struct mv643xx_eth_private*,int ,int) ;

__attribute__((used)) static void rxq_enable(struct rx_queue *rxq)
{
 struct mv643xx_eth_private *mp = rxq_to_mp(rxq);
 wrlp(mp, RXQ_COMMAND, 1 << rxq->index);
}
