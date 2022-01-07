
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct smsc911x_data {int dummy; } ;


 int ADDRH ;
 int ADDRL ;
 int SMSC_ASSERT_MAC_LOCK (struct smsc911x_data*) ;
 int smsc911x_mac_write (struct smsc911x_data*,int ,int) ;

__attribute__((used)) static void
smsc911x_set_hw_mac_address(struct smsc911x_data *pdata, u8 dev_addr[6])
{
 u32 mac_high16 = (dev_addr[5] << 8) | dev_addr[4];
 u32 mac_low32 = (dev_addr[3] << 24) | (dev_addr[2] << 16) |
     (dev_addr[1] << 8) | dev_addr[0];

 SMSC_ASSERT_MAC_LOCK(pdata);

 smsc911x_mac_write(pdata, ADDRH, mac_high16);
 smsc911x_mac_write(pdata, ADDRL, mac_low32);
}
