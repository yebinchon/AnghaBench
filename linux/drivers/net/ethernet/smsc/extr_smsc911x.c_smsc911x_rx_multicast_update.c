
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {unsigned int set_bits_mask; unsigned int clear_bits_mask; unsigned int hashhi; unsigned int hashlo; } ;


 int HASHH ;
 int HASHL ;
 int MAC_CR ;
 int SMSC_ASSERT_MAC_LOCK (struct smsc911x_data*) ;
 int SMSC_TRACE (struct smsc911x_data*,int ,char*,unsigned int,unsigned int,unsigned int) ;
 int hw ;
 unsigned int smsc911x_mac_read (struct smsc911x_data*,int ) ;
 int smsc911x_mac_write (struct smsc911x_data*,int ,unsigned int) ;

__attribute__((used)) static void smsc911x_rx_multicast_update(struct smsc911x_data *pdata)
{


 unsigned int mac_cr;

 SMSC_ASSERT_MAC_LOCK(pdata);

 mac_cr = smsc911x_mac_read(pdata, MAC_CR);
 mac_cr |= pdata->set_bits_mask;
 mac_cr &= ~(pdata->clear_bits_mask);
 smsc911x_mac_write(pdata, MAC_CR, mac_cr);
 smsc911x_mac_write(pdata, HASHH, pdata->hashhi);
 smsc911x_mac_write(pdata, HASHL, pdata->hashlo);
 SMSC_TRACE(pdata, hw, "maccr 0x%08X, HASHH 0x%08X, HASHL 0x%08X",
     mac_cr, pdata->hashhi, pdata->hashlo);
}
