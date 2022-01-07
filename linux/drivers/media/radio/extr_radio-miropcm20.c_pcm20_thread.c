
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcm20 {int rds_radio_test; int aci; int rds_pty; int rds_tp; int rds_ta; int rds_ms; int rds_ps_name; } ;


 int RDS_PTYTATP ;
 int RDS_RXVALUE ;
 int RDS_STATIONNAME ;
 int RDS_STATUS ;
 int RDS_TEXT ;
 scalar_t__ kthread_should_stop () ;
 int msleep_interruptible (unsigned int const) ;
 int rds_cmd (int ,int ,...) ;
 scalar_t__ sanitize (char*,int) ;
 int v4l2_ctrl_s_ctrl (int ,int) ;
 int v4l2_ctrl_s_ctrl_string (int ,char*) ;

__attribute__((used)) static int pcm20_thread(void *data)
{
 struct pcm20 *dev = data;
 const unsigned no_rds_start_counter = 5;
 const unsigned sleep_msecs = 2000;
 unsigned no_rds_counter = no_rds_start_counter;

 for (;;) {
  char text_buffer[66];
  u8 buf;
  int res;

  msleep_interruptible(sleep_msecs);

  if (kthread_should_stop())
   break;

  res = rds_cmd(dev->aci, RDS_RXVALUE, &buf, 1);
  if (res)
   continue;
  if (buf == 0) {
   if (no_rds_counter == 0)
    continue;
   no_rds_counter--;
   if (no_rds_counter)
    continue;






   v4l2_ctrl_s_ctrl_string(dev->rds_ps_name, "");
   v4l2_ctrl_s_ctrl(dev->rds_ms, 1);
   v4l2_ctrl_s_ctrl(dev->rds_ta, 0);
   v4l2_ctrl_s_ctrl(dev->rds_tp, 0);
   v4l2_ctrl_s_ctrl(dev->rds_pty, 0);
   v4l2_ctrl_s_ctrl_string(dev->rds_radio_test, "");
   continue;
  }
  no_rds_counter = no_rds_start_counter;

  res = rds_cmd(dev->aci, RDS_STATUS, &buf, 1);
  if (res)
   continue;
  if ((buf >> 3) & 1) {
   res = rds_cmd(dev->aci, RDS_STATIONNAME, text_buffer, 8);
   text_buffer[8] = 0;
   if (!res && sanitize(text_buffer, 8))
    v4l2_ctrl_s_ctrl_string(dev->rds_ps_name, text_buffer);
  }
  if ((buf >> 6) & 1) {
   u8 pty;

   res = rds_cmd(dev->aci, RDS_PTYTATP, &pty, 1);
   if (!res) {
    v4l2_ctrl_s_ctrl(dev->rds_ms, !!(pty & 0x01));
    v4l2_ctrl_s_ctrl(dev->rds_ta, !!(pty & 0x02));
    v4l2_ctrl_s_ctrl(dev->rds_tp, !!(pty & 0x80));
    v4l2_ctrl_s_ctrl(dev->rds_pty, (pty >> 2) & 0x1f);
   }
  }
  if ((buf >> 4) & 1) {
   res = rds_cmd(dev->aci, RDS_TEXT, text_buffer, 65);
   text_buffer[65] = 0;
   if (!res && sanitize(text_buffer + 1, 64))
    v4l2_ctrl_s_ctrl_string(dev->rds_radio_test, text_buffer + 1);
  }
 }
 return 0;
}
