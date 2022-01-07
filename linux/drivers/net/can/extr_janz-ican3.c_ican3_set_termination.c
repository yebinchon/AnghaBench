
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ican3_msg {int* data; int len; int spec; } ;
struct ican3_dev {int dummy; } ;
typedef int msg ;


 int HWCONF_TERMINATE_OFF ;
 int HWCONF_TERMINATE_ON ;
 int MSG_HWCONF ;
 int cpu_to_le16 (int) ;
 int ican3_send_msg (struct ican3_dev*,struct ican3_msg*) ;
 int memset (struct ican3_msg*,int ,int) ;

__attribute__((used)) static int ican3_set_termination(struct ican3_dev *mod, bool on)
{
 struct ican3_msg msg;

 memset(&msg, 0, sizeof(msg));
 msg.spec = MSG_HWCONF;
 msg.len = cpu_to_le16(2);
 msg.data[0] = 0x00;
 msg.data[1] = on ? HWCONF_TERMINATE_ON : HWCONF_TERMINATE_OFF;

 return ican3_send_msg(mod, &msg);
}
