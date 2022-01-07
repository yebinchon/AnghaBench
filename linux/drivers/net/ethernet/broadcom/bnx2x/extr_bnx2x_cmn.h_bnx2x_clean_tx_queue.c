
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_fp_txdata {int tx_pkt_cons; int tx_pkt_prod; int txq_index; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int ,int ,int ) ;
 int EBUSY ;
 scalar_t__ bnx2x_has_tx_work_unload (struct bnx2x_fp_txdata*) ;
 int bnx2x_panic () ;
 int usleep_range (int,int) ;

__attribute__((used)) static inline int bnx2x_clean_tx_queue(struct bnx2x *bp,
           struct bnx2x_fp_txdata *txdata)
{
 int cnt = 1000;

 while (bnx2x_has_tx_work_unload(txdata)) {
  if (!cnt) {
   BNX2X_ERR("timeout waiting for queue[%d]: txdata->tx_pkt_prod(%d) != txdata->tx_pkt_cons(%d)\n",
      txdata->txq_index, txdata->tx_pkt_prod,
      txdata->tx_pkt_cons);




   break;

  }
  cnt--;
  usleep_range(1000, 2000);
 }

 return 0;
}
