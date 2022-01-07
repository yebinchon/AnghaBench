
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct airo_info {int sem; int flags; int dev; } ;
typedef int cmd ;
struct TYPE_4__ {int cmd; } ;
typedef int Resp ;
typedef TYPE_1__ Cmd ;


 int FLAG_ENABLED ;
 int MAC_DISABLE ;
 int clear_bit (int ,int *) ;
 scalar_t__ down_interruptible (int *) ;
 int issuecommand (struct airo_info*,TYPE_1__*,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int netif_carrier_off (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int up (int *) ;

__attribute__((used)) static void disable_MAC( struct airo_info *ai, int lock ) {
        Cmd cmd;
 Resp rsp;

 if (lock == 1 && down_interruptible(&ai->sem))
  return;

 if (test_bit(FLAG_ENABLED, &ai->flags)) {
  if (lock != 2)
   netif_carrier_off(ai->dev);
  memset(&cmd, 0, sizeof(cmd));
  cmd.cmd = MAC_DISABLE;
  issuecommand(ai, &cmd, &rsp);
  clear_bit(FLAG_ENABLED, &ai->flags);
 }
 if (lock == 1)
  up(&ai->sem);
}
