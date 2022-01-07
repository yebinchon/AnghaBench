
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rain {int write_lock; } ;
struct cec_msg {int len; int* msg; } ;
struct cec_adapter {int dummy; } ;
typedef int hex ;
typedef int cmd ;


 int CEC_MAX_MSG_SIZE ;
 struct rain* cec_get_drvdata (struct cec_adapter*) ;
 int cec_msg_destination (struct cec_msg*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rain_send (struct rain*,char*) ;
 int snprintf (char*,int,char*,int,...) ;
 int strlcat (char*,char*,int) ;

__attribute__((used)) static int rain_cec_adap_transmit(struct cec_adapter *adap, u8 attempts,
        u32 signal_free_time, struct cec_msg *msg)
{
 struct rain *rain = cec_get_drvdata(adap);
 char cmd[2 * CEC_MAX_MSG_SIZE + 16];
 unsigned int i;
 int err;

 if (msg->len == 1) {
  snprintf(cmd, sizeof(cmd), "x%x", cec_msg_destination(msg));
 } else {
  char hex[3];

  snprintf(cmd, sizeof(cmd), "x%x %02x ",
    cec_msg_destination(msg), msg->msg[1]);
  for (i = 2; i < msg->len; i++) {
   snprintf(hex, sizeof(hex), "%02x", msg->msg[i]);
   strlcat(cmd, hex, sizeof(cmd));
  }
 }
 mutex_lock(&rain->write_lock);
 err = rain_send(rain, cmd);
 mutex_unlock(&rain->write_lock);
 return err;
}
