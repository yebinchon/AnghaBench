
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dev_addr; } ;
struct lan743x_adapter {int* mac_address; struct net_device* netdev; } ;


 int MAC_CR ;
 int MAC_CR_ADD_ ;
 int MAC_CR_ASD_ ;
 int MAC_CR_CNTR_RST_ ;
 int MAC_RX_ADDRH ;
 int MAC_RX_ADDRL ;
 int eth_random_addr (int*) ;
 int ether_addr_copy (int ,int*) ;
 int is_valid_ether_addr (int*) ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;
 int lan743x_mac_set_address (struct lan743x_adapter*,int*) ;

__attribute__((used)) static int lan743x_mac_init(struct lan743x_adapter *adapter)
{
 bool mac_address_valid = 1;
 struct net_device *netdev;
 u32 mac_addr_hi = 0;
 u32 mac_addr_lo = 0;
 u32 data;

 netdev = adapter->netdev;


 data = lan743x_csr_read(adapter, MAC_CR);
 data |= MAC_CR_ADD_ | MAC_CR_ASD_;
 data |= MAC_CR_CNTR_RST_;
 lan743x_csr_write(adapter, MAC_CR, data);

 mac_addr_hi = lan743x_csr_read(adapter, MAC_RX_ADDRH);
 mac_addr_lo = lan743x_csr_read(adapter, MAC_RX_ADDRL);
 adapter->mac_address[0] = mac_addr_lo & 0xFF;
 adapter->mac_address[1] = (mac_addr_lo >> 8) & 0xFF;
 adapter->mac_address[2] = (mac_addr_lo >> 16) & 0xFF;
 adapter->mac_address[3] = (mac_addr_lo >> 24) & 0xFF;
 adapter->mac_address[4] = mac_addr_hi & 0xFF;
 adapter->mac_address[5] = (mac_addr_hi >> 8) & 0xFF;

 if (((mac_addr_hi & 0x0000FFFF) == 0x0000FFFF) &&
     mac_addr_lo == 0xFFFFFFFF) {
  mac_address_valid = 0;
 } else if (!is_valid_ether_addr(adapter->mac_address)) {
  mac_address_valid = 0;
 }

 if (!mac_address_valid)
  eth_random_addr(adapter->mac_address);
 lan743x_mac_set_address(adapter, adapter->mac_address);
 ether_addr_copy(netdev->dev_addr, adapter->mac_address);
 return 0;
}
