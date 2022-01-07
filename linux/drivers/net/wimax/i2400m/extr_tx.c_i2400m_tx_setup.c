
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {scalar_t__ bus_tx_block_size; int tx_lock; void* tx_buf; int * tx_msg; scalar_t__ tx_msg_size; scalar_t__ tx_out; scalar_t__ tx_in; scalar_t__ tx_sequence; int wake_tx_ws; } ;


 int BUG_ON (int) ;
 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int I2400M_TX_BUF_SIZE ;
 int I2400M_TX_MSG_SIZE ;
 int INIT_WORK (int *,int ) ;
 int i2400m_wake_tx_work ;
 void* kmalloc (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int i2400m_tx_setup(struct i2400m *i2400m)
{
 int result = 0;
 void *tx_buf;
 unsigned long flags;




 INIT_WORK(&i2400m->wake_tx_ws, i2400m_wake_tx_work);

 tx_buf = kmalloc(I2400M_TX_BUF_SIZE, GFP_ATOMIC);
 if (tx_buf == ((void*)0)) {
  result = -ENOMEM;
  goto error_kmalloc;
 }





 BUILD_BUG_ON(2 * I2400M_TX_MSG_SIZE > I2400M_TX_BUF_SIZE);
 spin_lock_irqsave(&i2400m->tx_lock, flags);
 i2400m->tx_sequence = 0;
 i2400m->tx_in = 0;
 i2400m->tx_out = 0;
 i2400m->tx_msg_size = 0;
 i2400m->tx_msg = ((void*)0);
 i2400m->tx_buf = tx_buf;
 spin_unlock_irqrestore(&i2400m->tx_lock, flags);

 BUG_ON(i2400m->bus_tx_block_size == 0);
error_kmalloc:
 return result;

}
