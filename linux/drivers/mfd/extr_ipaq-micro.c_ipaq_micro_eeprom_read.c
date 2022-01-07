
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipaq_micro_msg {int* tx_data; int tx_len; int rx_data; int id; } ;
struct ipaq_micro {int dummy; } ;


 int MSG_EEPROM_READ ;
 int ipaq_micro_tx_msg_sync (struct ipaq_micro*,struct ipaq_micro_msg*) ;
 int memcpy (int*,int ,int) ;

__attribute__((used)) static void ipaq_micro_eeprom_read(struct ipaq_micro *micro,
       u8 address, u8 len, u8 *data)
{
 struct ipaq_micro_msg msg = {
  .id = MSG_EEPROM_READ,
 };
 u8 i;

 for (i = 0; i < len; i++) {
  msg.tx_data[0] = address + i;
  msg.tx_data[1] = 1;
  msg.tx_len = 2;
  ipaq_micro_tx_msg_sync(micro, &msg);
  memcpy(data + (i * 2), msg.rx_data, 2);
 }
}
