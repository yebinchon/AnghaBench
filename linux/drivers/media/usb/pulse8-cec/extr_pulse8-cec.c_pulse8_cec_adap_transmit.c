
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pulse8 {int dummy; } ;
struct cec_msg {int len; int * msg; } ;
struct cec_adapter {int dummy; } ;


 int MSGCODE_COMMAND_ACCEPTED ;
 int MSGCODE_TRANSMIT ;
 int MSGCODE_TRANSMIT_ACK_POLARITY ;
 int MSGCODE_TRANSMIT_EOM ;
 int MSGCODE_TRANSMIT_IDLETIME ;
 struct pulse8* cec_get_drvdata (struct cec_adapter*) ;
 int cec_msg_is_broadcast (struct cec_msg*) ;
 int pulse8_send_and_wait (struct pulse8*,int *,int,int ,int) ;

__attribute__((used)) static int pulse8_cec_adap_transmit(struct cec_adapter *adap, u8 attempts,
        u32 signal_free_time, struct cec_msg *msg)
{
 struct pulse8 *pulse8 = cec_get_drvdata(adap);
 u8 cmd[2];
 unsigned int i;
 int err;

 cmd[0] = MSGCODE_TRANSMIT_IDLETIME;
 cmd[1] = signal_free_time;
 err = pulse8_send_and_wait(pulse8, cmd, 2,
       MSGCODE_COMMAND_ACCEPTED, 1);
 cmd[0] = MSGCODE_TRANSMIT_ACK_POLARITY;
 cmd[1] = cec_msg_is_broadcast(msg);
 if (!err)
  err = pulse8_send_and_wait(pulse8, cmd, 2,
        MSGCODE_COMMAND_ACCEPTED, 1);
 cmd[0] = msg->len == 1 ? MSGCODE_TRANSMIT_EOM : MSGCODE_TRANSMIT;
 cmd[1] = msg->msg[0];
 if (!err)
  err = pulse8_send_and_wait(pulse8, cmd, 2,
        MSGCODE_COMMAND_ACCEPTED, 1);
 if (!err && msg->len > 1) {
  cmd[0] = msg->len == 2 ? MSGCODE_TRANSMIT_EOM :
      MSGCODE_TRANSMIT;
  cmd[1] = msg->msg[1];
  err = pulse8_send_and_wait(pulse8, cmd, 2,
        MSGCODE_COMMAND_ACCEPTED, 1);
  for (i = 0; !err && i + 2 < msg->len; i++) {
   cmd[0] = (i + 2 == msg->len - 1) ?
    MSGCODE_TRANSMIT_EOM : MSGCODE_TRANSMIT;
   cmd[1] = msg->msg[i + 2];
   err = pulse8_send_and_wait(pulse8, cmd, 2,
         MSGCODE_COMMAND_ACCEPTED, 1);
  }
 }

 return err;
}
