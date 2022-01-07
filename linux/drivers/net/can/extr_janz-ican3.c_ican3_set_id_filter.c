
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ican3_msg {int* data; void* len; void* spec; } ;
struct ican3_dev {int dummy; } ;
typedef int msg ;


 void* MSG_SETAFILMASK ;
 void* SETAFILMASK_FASTIF ;
 void* SETAFILMASK_REJECT ;
 void* cpu_to_le16 (int) ;
 int ican3_send_msg (struct ican3_dev*,struct ican3_msg*) ;
 int memset (struct ican3_msg*,int ,int) ;

__attribute__((used)) static int ican3_set_id_filter(struct ican3_dev *mod, bool accept)
{
 struct ican3_msg msg;
 int ret;


 memset(&msg, 0, sizeof(msg));
 msg.spec = MSG_SETAFILMASK;
 msg.len = cpu_to_le16(5);
 msg.data[0] = 0x00;
 msg.data[1] = 0x00;
 msg.data[2] = 0xff;
 msg.data[3] = 0x07;


 msg.data[4] = accept ? SETAFILMASK_FASTIF : SETAFILMASK_REJECT;

 ret = ican3_send_msg(mod, &msg);
 if (ret)
  return ret;


 memset(&msg, 0, sizeof(msg));
 msg.spec = MSG_SETAFILMASK;
 msg.len = cpu_to_le16(13);
 msg.data[0] = 0;
 msg.data[1] = 0x00;
 msg.data[2] = 0x00;
 msg.data[3] = 0x00;
 msg.data[4] = 0x20;
 msg.data[5] = 0xff;
 msg.data[6] = 0xff;
 msg.data[7] = 0xff;
 msg.data[8] = 0x3f;


 msg.data[9] = accept ? SETAFILMASK_FASTIF : SETAFILMASK_REJECT;

 return ican3_send_msg(mod, &msg);
}
