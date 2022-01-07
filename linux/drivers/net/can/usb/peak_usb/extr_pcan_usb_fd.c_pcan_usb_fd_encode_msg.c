
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct sk_buff {scalar_t__ data; } ;
struct pucan_tx_msg {void* size; int d; int channel_dlc; void* flags; void* can_id; void* type; } ;
struct peak_usb_device {int ctrl_idx; } ;
struct canfd_frame {int can_id; int flags; scalar_t__ len; int data; } ;


 size_t ALIGN (scalar_t__,int) ;
 int CANFD_BRS ;
 int CANFD_ESI ;
 int CAN_EFF_FLAG ;
 int CAN_EFF_MASK ;
 int CAN_RTR_FLAG ;
 int CAN_SFF_MASK ;
 size_t PUCAN_MSG_BITRATE_SWITCH ;
 size_t PUCAN_MSG_CAN_TX ;
 int PUCAN_MSG_CHANNEL_DLC (int ,scalar_t__) ;
 size_t PUCAN_MSG_ERROR_STATE_IND ;
 size_t PUCAN_MSG_EXT_DATA_LEN ;
 size_t PUCAN_MSG_EXT_ID ;
 size_t PUCAN_MSG_RTR ;
 scalar_t__ can_is_canfd_skb (struct sk_buff*) ;
 scalar_t__ can_len2dlc (scalar_t__) ;
 void* cpu_to_le16 (size_t) ;
 void* cpu_to_le32 (int) ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static int pcan_usb_fd_encode_msg(struct peak_usb_device *dev,
      struct sk_buff *skb, u8 *obuf, size_t *size)
{
 struct pucan_tx_msg *tx_msg = (struct pucan_tx_msg *)obuf;
 struct canfd_frame *cfd = (struct canfd_frame *)skb->data;
 u16 tx_msg_size, tx_msg_flags;
 u8 can_dlc;

 tx_msg_size = ALIGN(sizeof(struct pucan_tx_msg) + cfd->len, 4);
 tx_msg->size = cpu_to_le16(tx_msg_size);
 tx_msg->type = cpu_to_le16(PUCAN_MSG_CAN_TX);

 tx_msg_flags = 0;
 if (cfd->can_id & CAN_EFF_FLAG) {
  tx_msg_flags |= PUCAN_MSG_EXT_ID;
  tx_msg->can_id = cpu_to_le32(cfd->can_id & CAN_EFF_MASK);
 } else {
  tx_msg->can_id = cpu_to_le32(cfd->can_id & CAN_SFF_MASK);
 }

 if (can_is_canfd_skb(skb)) {

  can_dlc = can_len2dlc(cfd->len);

  tx_msg_flags |= PUCAN_MSG_EXT_DATA_LEN;

  if (cfd->flags & CANFD_BRS)
   tx_msg_flags |= PUCAN_MSG_BITRATE_SWITCH;

  if (cfd->flags & CANFD_ESI)
   tx_msg_flags |= PUCAN_MSG_ERROR_STATE_IND;
 } else {

  can_dlc = cfd->len;

  if (cfd->can_id & CAN_RTR_FLAG)
   tx_msg_flags |= PUCAN_MSG_RTR;
 }

 tx_msg->flags = cpu_to_le16(tx_msg_flags);
 tx_msg->channel_dlc = PUCAN_MSG_CHANNEL_DLC(dev->ctrl_idx, can_dlc);
 memcpy(tx_msg->d, cfd->data, cfd->len);



 tx_msg = (struct pucan_tx_msg *)(obuf + tx_msg_size);

 tx_msg->size = 0;


 *size = tx_msg_size + sizeof(u32);

 return 0;
}
