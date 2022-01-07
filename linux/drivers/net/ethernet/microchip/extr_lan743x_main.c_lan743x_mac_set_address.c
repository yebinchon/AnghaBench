
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct lan743x_adapter {int netdev; int mac_address; } ;


 int MAC_RX_ADDRH ;
 int MAC_RX_ADDRL ;
 int drv ;
 int ether_addr_copy (int ,int*) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;
 int netif_info (struct lan743x_adapter*,int ,int ,char*,int*) ;

__attribute__((used)) static void lan743x_mac_set_address(struct lan743x_adapter *adapter,
        u8 *addr)
{
 u32 addr_lo, addr_hi;

 addr_lo = addr[0] |
  addr[1] << 8 |
  addr[2] << 16 |
  addr[3] << 24;
 addr_hi = addr[4] |
  addr[5] << 8;
 lan743x_csr_write(adapter, MAC_RX_ADDRL, addr_lo);
 lan743x_csr_write(adapter, MAC_RX_ADDRH, addr_hi);

 ether_addr_copy(adapter->mac_address, addr);
 netif_info(adapter, drv, adapter->netdev,
     "MAC address set to %pM\n", addr);
}
