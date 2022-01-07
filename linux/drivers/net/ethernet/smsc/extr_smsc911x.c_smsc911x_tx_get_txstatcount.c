
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {int dummy; } ;


 int TX_FIFO_INF ;
 int TX_FIFO_INF_TSUSED_ ;
 int smsc911x_reg_read (struct smsc911x_data*,int ) ;

__attribute__((used)) static unsigned int smsc911x_tx_get_txstatcount(struct smsc911x_data *pdata)
{
 return (smsc911x_reg_read(pdata, TX_FIFO_INF)
  & TX_FIFO_INF_TSUSED_) >> 16;
}
