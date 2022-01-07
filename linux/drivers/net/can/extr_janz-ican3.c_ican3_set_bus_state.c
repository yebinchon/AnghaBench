
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ican3_msg {int* data; void* len; int spec; } ;
struct can_bittiming {int brp; int sjw; int prop_seg; int phase_seg1; int phase_seg2; } ;
struct TYPE_2__ {int ctrlmode; struct can_bittiming bittiming; } ;
struct ican3_dev {scalar_t__ fwtype; TYPE_1__ can; } ;
typedef int msg ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int ENOTSUPP ;
 scalar_t__ ICAN3_FWTYPE_CAL_CANOPEN ;
 scalar_t__ ICAN3_FWTYPE_ICANOS ;
 int LMTS_BUSOFF_REQ ;
 int LMTS_BUSON_REQ ;
 int MSG_CBTRREQ ;
 int MSG_COFFREQ ;
 int MSG_CONREQ ;
 int MSG_LMTS ;
 int MSG_NMTS ;
 int NMTS_CREATE_NODE_REQ ;
 void* cpu_to_le16 (int) ;
 int ican3_send_msg (struct ican3_dev*,struct ican3_msg*) ;
 int memset (struct ican3_msg*,int ,int) ;
 int strcpy (int*,char*) ;

__attribute__((used)) static int ican3_set_bus_state(struct ican3_dev *mod, bool on)
{
 struct can_bittiming *bt = &mod->can.bittiming;
 struct ican3_msg msg;
 u8 btr0, btr1;
 int res;




 btr0 = ((bt->brp - 1) & 0x3f) | (((bt->sjw - 1) & 0x3) << 6);
 btr1 = ((bt->prop_seg + bt->phase_seg1 - 1) & 0xf) |
  (((bt->phase_seg2 - 1) & 0x7) << 4);
 if (mod->can.ctrlmode & CAN_CTRLMODE_3_SAMPLES)
  btr1 |= 0x80;

 if (mod->fwtype == ICAN3_FWTYPE_ICANOS) {
  if (on) {

   memset(&msg, 0, sizeof(msg));
   msg.spec = MSG_CBTRREQ;
   msg.len = cpu_to_le16(4);
   msg.data[0] = 0x00;
   msg.data[1] = 0x00;
   msg.data[2] = btr0;
   msg.data[3] = btr1;

   res = ican3_send_msg(mod, &msg);
   if (res)
    return res;
  }


  memset(&msg, 0, sizeof(msg));
  msg.spec = on ? MSG_CONREQ : MSG_COFFREQ;
  msg.len = cpu_to_le16(0);

  return ican3_send_msg(mod, &msg);

 } else if (mod->fwtype == ICAN3_FWTYPE_CAL_CANOPEN) {

  memset(&msg, 0, sizeof(msg));
  msg.spec = MSG_LMTS;
  if (on) {
   msg.len = cpu_to_le16(4);
   msg.data[0] = LMTS_BUSON_REQ;
   msg.data[1] = 0;
   msg.data[2] = btr0;
   msg.data[3] = btr1;
  } else {
   msg.len = cpu_to_le16(2);
   msg.data[0] = LMTS_BUSOFF_REQ;
   msg.data[1] = 0;
  }
  res = ican3_send_msg(mod, &msg);
  if (res)
   return res;

  if (on) {





   memset(&msg, 0, sizeof(msg));
   msg.spec = MSG_NMTS;
   msg.len = cpu_to_le16(11);
   msg.data[0] = NMTS_CREATE_NODE_REQ;
   msg.data[1] = 0;
   msg.data[2] = 2;
   msg.data[3] = 1;
   strcpy(msg.data + 4, "locnod1");
   return ican3_send_msg(mod, &msg);
  }
  return 0;
 }
 return -ENOTSUPP;
}
