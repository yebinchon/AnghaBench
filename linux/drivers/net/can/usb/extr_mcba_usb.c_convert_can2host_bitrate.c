
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mcba_usb_msg_ka_can {int can_bitrate; } ;


 int get_unaligned_be16 (int *) ;

__attribute__((used)) static u32 convert_can2host_bitrate(struct mcba_usb_msg_ka_can *msg)
{
 const u32 bitrate = get_unaligned_be16(&msg->can_bitrate);

 if ((bitrate == 33) || (bitrate == 83))
  return bitrate * 1000 + 333;
 else
  return bitrate * 1000;
}
