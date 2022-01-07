
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipaq_micro_msg {int rx_len; int rx_data; int id; } ;
struct ipaq_micro {char* version; int dev; } ;


 int MSG_VERSION ;
 int dev_err (int ,char*,int) ;
 int ipaq_micro_tx_msg_sync (struct ipaq_micro*,struct ipaq_micro_msg*) ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static void ipaq_micro_get_version(struct ipaq_micro *micro)
{
 struct ipaq_micro_msg msg = {
  .id = MSG_VERSION,
 };

 ipaq_micro_tx_msg_sync(micro, &msg);
 if (msg.rx_len == 4) {
  memcpy(micro->version, msg.rx_data, 4);
  micro->version[4] = '\0';
 } else if (msg.rx_len == 9) {
  memcpy(micro->version, msg.rx_data, 4);
  micro->version[4] = '\0';

 } else {
  dev_err(micro->dev,
   "illegal version message %d bytes\n", msg.rx_len);
 }
}
