
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ican3_msg {int* data; int len; int spec; } ;
struct ican3_dev {int dummy; } ;
typedef int msg ;


 int MSG_INQUIRY ;
 int cpu_to_le16 (int) ;
 int ican3_send_msg (struct ican3_dev*,struct ican3_msg*) ;
 int memset (struct ican3_msg*,int ,int) ;

__attribute__((used)) static int ican3_send_inquiry(struct ican3_dev *mod, u8 subspec)
{
 struct ican3_msg msg;

 memset(&msg, 0, sizeof(msg));
 msg.spec = MSG_INQUIRY;
 msg.len = cpu_to_le16(2);
 msg.data[0] = subspec;
 msg.data[1] = 0x00;

 return ican3_send_msg(mod, &msg);
}
