
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pulse8 {int* data; scalar_t__ len; int dev; int cmd_done; int serio; } ;


 int EIO ;
 int ENOTTY ;
 int ETIMEDOUT ;
 int HZ ;
 int MSGCODE_COMMAND_REJECTED ;
 scalar_t__ const MSGCODE_GET_BUILDDATE ;
 scalar_t__ const MSGCODE_SET_AUTO_ENABLED ;
 scalar_t__ const MSGCODE_SET_CONTROLLED ;
 int dev_info (int ,char*,int) ;
 int init_completion (int *) ;
 int pulse8_send (int ,scalar_t__ const*,scalar_t__) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int pulse8_send_and_wait_once(struct pulse8 *pulse8,
         const u8 *cmd, u8 cmd_len,
         u8 response, u8 size)
{
 int err;


 init_completion(&pulse8->cmd_done);

 err = pulse8_send(pulse8->serio, cmd, cmd_len);
 if (err)
  return err;

 if (!wait_for_completion_timeout(&pulse8->cmd_done, HZ))
  return -ETIMEDOUT;
 if ((pulse8->data[0] & 0x3f) == MSGCODE_COMMAND_REJECTED &&
     cmd[0] != MSGCODE_SET_CONTROLLED &&
     cmd[0] != MSGCODE_SET_AUTO_ENABLED &&
     cmd[0] != MSGCODE_GET_BUILDDATE)
  return -ENOTTY;
 if (response &&
     ((pulse8->data[0] & 0x3f) != response || pulse8->len < size + 1)) {
  dev_info(pulse8->dev, "transmit: failed %02x\n",
    pulse8->data[0] & 0x3f);
  return -EIO;
 }
 return 0;
}
