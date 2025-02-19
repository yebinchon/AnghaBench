
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_adapter {int dummy; } ;


 int ETH_HLEN ;
 int MAC_RX ;
 int MAC_RX_MAX_SIZE_MASK_ ;
 int MAC_RX_MAX_SIZE_SHIFT_ ;
 int MAC_RX_RXD_ ;
 int MAC_RX_RXEN_ ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_wait_for_bit (struct lan743x_adapter*,int ,int,int,int,int,int) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;

__attribute__((used)) static int lan743x_mac_set_mtu(struct lan743x_adapter *adapter, int new_mtu)
{
 int enabled = 0;
 u32 mac_rx = 0;

 mac_rx = lan743x_csr_read(adapter, MAC_RX);
 if (mac_rx & MAC_RX_RXEN_) {
  enabled = 1;
  if (mac_rx & MAC_RX_RXD_) {
   lan743x_csr_write(adapter, MAC_RX, mac_rx);
   mac_rx &= ~MAC_RX_RXD_;
  }
  mac_rx &= ~MAC_RX_RXEN_;
  lan743x_csr_write(adapter, MAC_RX, mac_rx);
  lan743x_csr_wait_for_bit(adapter, MAC_RX, MAC_RX_RXD_,
      1, 1000, 20000, 100);
  lan743x_csr_write(adapter, MAC_RX, mac_rx | MAC_RX_RXD_);
 }

 mac_rx &= ~(MAC_RX_MAX_SIZE_MASK_);
 mac_rx |= (((new_mtu + ETH_HLEN + 4) << MAC_RX_MAX_SIZE_SHIFT_) &
    MAC_RX_MAX_SIZE_MASK_);
 lan743x_csr_write(adapter, MAC_RX, mac_rx);

 if (enabled) {
  mac_rx |= MAC_RX_RXEN_;
  lan743x_csr_write(adapter, MAC_RX, mac_rx);
 }
 return 0;
}
