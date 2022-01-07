
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_adapter {int dummy; } ;


 int MAC_RX ;
 int MAC_RX_RXD_ ;
 int MAC_RX_RXEN_ ;
 int MAC_TX ;
 int MAC_TX_TXD_ ;
 int MAC_TX_TXEN_ ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_wait_for_bit (struct lan743x_adapter*,int ,int ,int,int,int,int) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int ) ;

__attribute__((used)) static void lan743x_mac_close(struct lan743x_adapter *adapter)
{
 u32 temp;

 temp = lan743x_csr_read(adapter, MAC_TX);
 temp &= ~MAC_TX_TXEN_;
 lan743x_csr_write(adapter, MAC_TX, temp);
 lan743x_csr_wait_for_bit(adapter, MAC_TX, MAC_TX_TXD_,
     1, 1000, 20000, 100);

 temp = lan743x_csr_read(adapter, MAC_RX);
 temp &= ~MAC_RX_RXEN_;
 lan743x_csr_write(adapter, MAC_RX, temp);
 lan743x_csr_wait_for_bit(adapter, MAC_RX, MAC_RX_RXD_,
     1, 1000, 20000, 100);
}
