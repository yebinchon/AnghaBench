
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ican3_msg {unsigned int* data; int len; int spec; } ;
struct ican3_dev {int iftype; int fasttx_start; int fastrx_start; } ;
typedef int msg ;


 unsigned int DPM_PAGE_ADDR (int ) ;
 int MSG_INITFDPMQUEUE ;
 int WARN_ON (int) ;
 int cpu_to_le16 (int) ;
 int ican3_send_msg (struct ican3_dev*,struct ican3_msg*) ;
 int memset (struct ican3_msg*,int ,int) ;

__attribute__((used)) static int ican3_msg_fasthostif(struct ican3_dev *mod)
{
 struct ican3_msg msg;
 unsigned int addr;

 memset(&msg, 0, sizeof(msg));
 msg.spec = MSG_INITFDPMQUEUE;
 msg.len = cpu_to_le16(8);


 addr = DPM_PAGE_ADDR(mod->fastrx_start);
 msg.data[0] = addr & 0xff;
 msg.data[1] = (addr >> 8) & 0xff;
 msg.data[2] = (addr >> 16) & 0xff;
 msg.data[3] = (addr >> 24) & 0xff;


 addr = DPM_PAGE_ADDR(mod->fasttx_start);
 msg.data[4] = addr & 0xff;
 msg.data[5] = (addr >> 8) & 0xff;
 msg.data[6] = (addr >> 16) & 0xff;
 msg.data[7] = (addr >> 24) & 0xff;


 WARN_ON(mod->iftype != 1);

 return ican3_send_msg(mod, &msg);
}
