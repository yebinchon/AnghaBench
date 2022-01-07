
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ican3_msg {int* data; int len; } ;
struct ican3_dev {int ndev; } ;






 scalar_t__ NMTS_SLAVE_EVENT_IND ;
 scalar_t__ NMTS_SLAVE_STATE_IND ;
 int ican3_handle_cevtind (struct ican3_dev*,struct ican3_msg*) ;
 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (int ) ;
 int memmove (int*,int*,int ) ;
 int netdev_warn (int ,char*,scalar_t__) ;

__attribute__((used)) static void ican3_handle_nmtsind(struct ican3_dev *mod, struct ican3_msg *msg)
{
 u16 subspec;

 subspec = msg->data[0] + msg->data[1] * 0x100;
 if (subspec == NMTS_SLAVE_EVENT_IND) {
  switch (msg->data[2]) {
  case 131:
  case 130:



   le16_add_cpu(&msg->len, -3);
   memmove(msg->data, msg->data + 3, le16_to_cpu(msg->len));
   ican3_handle_cevtind(mod, msg);
   break;
  case 129:
  case 128:

   break;
  default:
   netdev_warn(mod->ndev, "unknown NMTS event indication %x\n",
        msg->data[2]);
   break;
  }
 } else if (subspec == NMTS_SLAVE_STATE_IND) {

 } else {
  netdev_warn(mod->ndev, "unhandled NMTS indication %x\n",
       subspec);
  return;
 }
}
