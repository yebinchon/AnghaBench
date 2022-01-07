
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rain {char* cmd; int adap; } ;
struct cec_msg {scalar_t__ len; scalar_t__ msg; } ;


 scalar_t__ CEC_MAX_MSG_SIZE ;
 int CEC_TX_STATUS_LOW_DRIVE ;
 int CEC_TX_STATUS_NACK ;
 int CEC_TX_STATUS_OK ;
 int cec_received_msg (int ,struct cec_msg*) ;
 int cec_transmit_attempt_done (int ,int ) ;
 scalar_t__ hex2bin (scalar_t__,char const*,int) ;
 int hex_to_bin (char const) ;
 scalar_t__ isxdigit (char const) ;

__attribute__((used)) static void rain_process_msg(struct rain *rain)
{
 struct cec_msg msg = {};
 const char *cmd = rain->cmd + 3;
 int stat = -1;

 for (; *cmd; cmd++) {
  if (!isxdigit(*cmd))
   continue;
  if (isxdigit(cmd[0]) && isxdigit(cmd[1])) {
   if (msg.len == CEC_MAX_MSG_SIZE)
    break;
   if (hex2bin(msg.msg + msg.len, cmd, 1))
    continue;
   msg.len++;
   cmd++;
   continue;
  }
  if (!cmd[1])
   stat = hex_to_bin(cmd[0]);
  break;
 }

 if (rain->cmd[0] == 'R') {
  if (stat == 1 || stat == 2)
   cec_received_msg(rain->adap, &msg);
  return;
 }

 switch (stat) {
 case 1:
  cec_transmit_attempt_done(rain->adap, CEC_TX_STATUS_OK);
  break;
 case 2:
  cec_transmit_attempt_done(rain->adap, CEC_TX_STATUS_NACK);
  break;
 default:
  cec_transmit_attempt_done(rain->adap, CEC_TX_STATUS_LOW_DRIVE);
  break;
 }
}
