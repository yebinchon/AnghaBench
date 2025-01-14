
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct lan743x_adapter {scalar_t__* mac_address; } ;


 int RFE_ADDR_FILT_HI (int ) ;
 int RFE_ADDR_FILT_HI_VALID_ ;
 int RFE_ADDR_FILT_LO (int ) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;

__attribute__((used)) static void lan743x_rfe_update_mac_address(struct lan743x_adapter *adapter)
{
 u8 *mac_addr;
 u32 mac_addr_hi = 0;
 u32 mac_addr_lo = 0;


 mac_addr = adapter->mac_address;
 mac_addr_lo = ((((u32)(mac_addr[0])) << 0) |
        (((u32)(mac_addr[1])) << 8) |
        (((u32)(mac_addr[2])) << 16) |
        (((u32)(mac_addr[3])) << 24));
 mac_addr_hi = ((((u32)(mac_addr[4])) << 0) |
        (((u32)(mac_addr[5])) << 8));

 lan743x_csr_write(adapter, RFE_ADDR_FILT_LO(0), mac_addr_lo);
 lan743x_csr_write(adapter, RFE_ADDR_FILT_HI(0),
     mac_addr_hi | RFE_ADDR_FILT_HI_VALID_);
}
