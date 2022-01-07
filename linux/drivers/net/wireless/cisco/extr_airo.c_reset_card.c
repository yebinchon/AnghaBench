
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct airo_info* ml_priv; } ;
struct airo_info {int sem; } ;


 int CMD_SOFTRESET ;
 int COMMAND ;
 int OUT4500 (struct airo_info*,int ,int ) ;
 scalar_t__ down_interruptible (int *) ;
 int msleep (int) ;
 int up (int *) ;
 int waitbusy (struct airo_info*) ;

__attribute__((used)) static int reset_card( struct net_device *dev , int lock) {
 struct airo_info *ai = dev->ml_priv;

 if (lock && down_interruptible(&ai->sem))
  return -1;
 waitbusy (ai);
 OUT4500(ai,COMMAND,CMD_SOFTRESET);
 msleep(200);
 waitbusy (ai);
 msleep(200);
 if (lock)
  up(&ai->sem);
 return 0;
}
