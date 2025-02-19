
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv643xx_eth_private {int int_mask; int work_tx_end; int work_rx; int work_link; int work_tx; } ;


 int INT_CAUSE ;
 int INT_CAUSE_EXT ;
 int INT_EXT ;
 int INT_EXT_LINK_PHY ;
 int INT_EXT_TX ;
 int INT_RX ;
 int INT_TX_END ;
 int TXQ_COMMAND ;
 int rdlp (struct mv643xx_eth_private*,int ) ;
 int wrlp (struct mv643xx_eth_private*,int ,int) ;

__attribute__((used)) static int mv643xx_eth_collect_events(struct mv643xx_eth_private *mp)
{
 u32 int_cause;
 u32 int_cause_ext;

 int_cause = rdlp(mp, INT_CAUSE) & mp->int_mask;
 if (int_cause == 0)
  return 0;

 int_cause_ext = 0;
 if (int_cause & INT_EXT) {
  int_cause &= ~INT_EXT;
  int_cause_ext = rdlp(mp, INT_CAUSE_EXT);
 }

 if (int_cause) {
  wrlp(mp, INT_CAUSE, ~int_cause);
  mp->work_tx_end |= ((int_cause & INT_TX_END) >> 19) &
    ~(rdlp(mp, TXQ_COMMAND) & 0xff);
  mp->work_rx |= (int_cause & INT_RX) >> 2;
 }

 int_cause_ext &= INT_EXT_LINK_PHY | INT_EXT_TX;
 if (int_cause_ext) {
  wrlp(mp, INT_CAUSE_EXT, ~int_cause_ext);
  if (int_cause_ext & INT_EXT_LINK_PHY)
   mp->work_link = 1;
  mp->work_tx |= int_cause_ext & INT_EXT_TX;
 }

 return 1;
}
