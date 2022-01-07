
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_adapter {int dummy; } ;
typedef int encodedMAC ;


 int dprintk (char*,...) ;
 int eth_zero_addr (int *) ;
 int getmac_tt (int *,int *) ;
 int memcpy (int *,int *,int) ;
 int ttpci_eeprom_read_encodedMAC (struct i2c_adapter*,int *) ;

int ttpci_eeprom_parse_mac(struct i2c_adapter *adapter, u8 *proposed_mac)
{
 int ret;
 u8 encodedMAC[20];
 u8 decodedMAC[6];

 ret = ttpci_eeprom_read_encodedMAC(adapter, encodedMAC);

 if (ret != 0) {
  dprintk("Couldn't read from EEPROM: not there?\n");
  eth_zero_addr(proposed_mac);
  return ret;
 }

 ret = getmac_tt(decodedMAC, encodedMAC);
 if( ret != 0 ) {
  dprintk("adapter failed MAC signature check\n");
  dprintk("encoded MAC from EEPROM was %*phC",
   (int)sizeof(encodedMAC), &encodedMAC);
  eth_zero_addr(proposed_mac);
  return ret;
 }

 memcpy(proposed_mac, decodedMAC, 6);
 dprintk("adapter has MAC addr = %pM\n", decodedMAC);
 return 0;
}
