
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct ucan_can_msg {scalar_t__ dlc; int id; } ;


 int CAN_RTR_FLAG ;
 scalar_t__ UCAN_IN_HDR_SIZE ;
 int get_can_dlc (scalar_t__) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static u8 ucan_get_can_dlc(struct ucan_can_msg *msg, u16 len)
{
 if (le32_to_cpu(msg->id) & CAN_RTR_FLAG)
  return get_can_dlc(msg->dlc);
 else
  return get_can_dlc(len - (UCAN_IN_HDR_SIZE + sizeof(msg->id)));
}
