
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct cec_msg {int len; int* msg; } ;
struct pulse8 {int started; int escape; scalar_t__ idx; int* buf; int* data; scalar_t__ len; int dev; int cmd_done; int work; struct cec_msg rx_msg; } ;
typedef int irqreturn_t ;


 int CEC_MAX_MSG_SIZE ;
 scalar_t__ DATA_SIZE ;
 int IRQ_HANDLED ;



 int MSGCODE_FRAME_EOM ;
 unsigned char MSGEND ;
 unsigned char MSGESC ;
 scalar_t__ MSGOFFSET ;
 unsigned char MSGSTART ;
 int complete (int *) ;
 scalar_t__ debug ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int dev_info (int ,char*,scalar_t__,int*) ;
 int memcpy (int*,int*,scalar_t__) ;
 int schedule_work (int *) ;
 struct pulse8* serio_get_drvdata (struct serio*) ;

__attribute__((used)) static irqreturn_t pulse8_interrupt(struct serio *serio, unsigned char data,
        unsigned int flags)
{
 struct pulse8 *pulse8 = serio_get_drvdata(serio);

 if (!pulse8->started && data != MSGSTART)
  return IRQ_HANDLED;
 if (data == MSGESC) {
  pulse8->escape = 1;
  return IRQ_HANDLED;
 }
 if (pulse8->escape) {
  data += MSGOFFSET;
  pulse8->escape = 0;
 } else if (data == MSGEND) {
  struct cec_msg *msg = &pulse8->rx_msg;

  if (debug)
   dev_info(pulse8->dev, "received: %*ph\n",
     pulse8->idx, pulse8->buf);
  pulse8->data[0] = pulse8->buf[0];
  switch (pulse8->buf[0] & 0x3f) {
  case 137:
   msg->len = 1;
   msg->msg[0] = pulse8->buf[1];
   break;
  case 138:
   if (msg->len == CEC_MAX_MSG_SIZE)
    break;
   msg->msg[msg->len++] = pulse8->buf[1];
   if (pulse8->buf[0] & MSGCODE_FRAME_EOM)
    schedule_work(&pulse8->work);
   break;
  case 128:
  case 131:
  case 132:
  case 130:
  case 129:
   schedule_work(&pulse8->work);
   break;
  case 136:
  case 135:
  case 134:
  case 133:
   break;
  case 140:
  case 139:
  default:
   if (pulse8->idx == 0)
    break;
   memcpy(pulse8->data, pulse8->buf, pulse8->idx);
   pulse8->len = pulse8->idx;
   complete(&pulse8->cmd_done);
   break;
  }
  pulse8->idx = 0;
  pulse8->started = 0;
  return IRQ_HANDLED;
 } else if (data == MSGSTART) {
  pulse8->idx = 0;
  pulse8->started = 1;
  return IRQ_HANDLED;
 }

 if (pulse8->idx >= DATA_SIZE) {
  dev_dbg(pulse8->dev,
   "throwing away %d bytes of garbage\n", pulse8->idx);
  pulse8->idx = 0;
 }
 pulse8->buf[pulse8->idx++] = data;
 return IRQ_HANDLED;
}
