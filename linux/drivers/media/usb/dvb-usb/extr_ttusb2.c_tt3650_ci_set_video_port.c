
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ca_en50221 {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int TT3650_CMD_CI_SET_VIDEO_PORT ;
 int ci_dbg (char*,int,int) ;
 int err (char*,char*) ;
 int tt3650_ci_msg_locked (struct dvb_ca_en50221*,int ,int*,int,int) ;

__attribute__((used)) static int tt3650_ci_set_video_port(struct dvb_ca_en50221 *ca, int slot, int enable)
{
 u8 buf[1];
 int ret;

 ci_dbg("%d %d", slot, enable);

 if (slot)
  return -EINVAL;

 buf[0] = enable;

 ret = tt3650_ci_msg_locked(ca, TT3650_CMD_CI_SET_VIDEO_PORT, buf, 1, 1);
 if (ret < 0)
  return ret;

 if (enable != buf[0]) {
  err("CI not %sabled.", enable ? "en" : "dis");
  return -EIO;
 }

 return 0;
}
