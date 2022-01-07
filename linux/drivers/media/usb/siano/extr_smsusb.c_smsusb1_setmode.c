
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sms_msg_hdr {int member_3; int member_4; int member_2; int member_1; int member_0; } ;
typedef int msg ;


 int DEVICE_MODE_DVBT ;
 int DEVICE_MODE_DVBT_BDA ;
 int EINVAL ;
 int HIF_TASK ;
 int MSG_SW_RELOAD_REQ ;
 int pr_err (char*,int) ;
 int smsusb_sendrequest (void*,struct sms_msg_hdr*,int) ;

__attribute__((used)) static int smsusb1_setmode(void *context, int mode)
{
 struct sms_msg_hdr msg = { MSG_SW_RELOAD_REQ, 0, HIF_TASK,
        sizeof(struct sms_msg_hdr), 0 };

 if (mode < DEVICE_MODE_DVBT || mode > DEVICE_MODE_DVBT_BDA) {
  pr_err("invalid firmware id specified %d\n", mode);
  return -EINVAL;
 }

 return smsusb_sendrequest(context, &msg, sizeof(msg));
}
