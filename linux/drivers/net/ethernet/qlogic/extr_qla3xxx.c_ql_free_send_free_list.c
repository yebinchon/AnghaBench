
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_tx_buf_cb {int * oal; } ;
struct ql3_adapter {struct ql_tx_buf_cb* tx_buf; } ;


 int NUM_REQ_Q_ENTRIES ;
 int kfree (int *) ;

__attribute__((used)) static void ql_free_send_free_list(struct ql3_adapter *qdev)
{
 struct ql_tx_buf_cb *tx_cb;
 int i;

 tx_cb = &qdev->tx_buf[0];
 for (i = 0; i < NUM_REQ_Q_ENTRIES; i++) {
  kfree(tx_cb->oal);
  tx_cb->oal = ((void*)0);
  tx_cb++;
 }
}
