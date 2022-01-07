
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_port {int dummy; } ;


 int MVNETA_TXQ_TOKEN_SIZE_MAX ;
 int MVNETA_TXQ_TOKEN_SIZE_REG (int) ;
 int MVNETA_TX_MTU ;
 int MVNETA_TX_MTU_MAX ;
 int MVNETA_TX_TOKEN_SIZE ;
 int MVNETA_TX_TOKEN_SIZE_MAX ;
 int mvreg_read (struct mvneta_port*,int ) ;
 int mvreg_write (struct mvneta_port*,int ,int) ;
 int txq_number ;

__attribute__((used)) static void mvneta_txq_max_tx_size_set(struct mvneta_port *pp, int max_tx_size)

{
 u32 val, size, mtu;
 int queue;

 mtu = max_tx_size * 8;
 if (mtu > MVNETA_TX_MTU_MAX)
  mtu = MVNETA_TX_MTU_MAX;


 val = mvreg_read(pp, MVNETA_TX_MTU);
 val &= ~MVNETA_TX_MTU_MAX;
 val |= mtu;
 mvreg_write(pp, MVNETA_TX_MTU, val);


 val = mvreg_read(pp, MVNETA_TX_TOKEN_SIZE);

 size = val & MVNETA_TX_TOKEN_SIZE_MAX;
 if (size < mtu) {
  size = mtu;
  val &= ~MVNETA_TX_TOKEN_SIZE_MAX;
  val |= size;
  mvreg_write(pp, MVNETA_TX_TOKEN_SIZE, val);
 }
 for (queue = 0; queue < txq_number; queue++) {
  val = mvreg_read(pp, MVNETA_TXQ_TOKEN_SIZE_REG(queue));

  size = val & MVNETA_TXQ_TOKEN_SIZE_MAX;
  if (size < mtu) {
   size = mtu;
   val &= ~MVNETA_TXQ_TOKEN_SIZE_MAX;
   val |= size;
   mvreg_write(pp, MVNETA_TXQ_TOKEN_SIZE_REG(queue), val);
  }
 }
}
