
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tx_queue {int index; } ;
struct mv643xx_eth_private {TYPE_1__* shared; } ;
struct TYPE_2__ {int tx_bw_control; } ;


 int TXQ_FIX_PRIO_CONF ;
 int TXQ_FIX_PRIO_CONF_MOVED ;


 int rdlp (struct mv643xx_eth_private*,int) ;
 struct mv643xx_eth_private* txq_to_mp (struct tx_queue*) ;
 int wrlp (struct mv643xx_eth_private*,int,int) ;

__attribute__((used)) static void txq_set_fixed_prio_mode(struct tx_queue *txq)
{
 struct mv643xx_eth_private *mp = txq_to_mp(txq);
 int off;
 u32 val;




 off = 0;
 switch (mp->shared->tx_bw_control) {
 case 128:
  off = TXQ_FIX_PRIO_CONF;
  break;
 case 129:
  off = TXQ_FIX_PRIO_CONF_MOVED;
  break;
 }

 if (off) {
  val = rdlp(mp, off);
  val |= 1 << txq->index;
  wrlp(mp, off, val);
 }
}
