
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct saa7164_dev {int lock; TYPE_1__* cmds; } ;
struct TYPE_2__ {int inuse; size_t seqno; int timeout; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static u32 saa7164_cmd_timeout_get(struct saa7164_dev *dev, u8 seqno)
{
 int ret = 0;

 mutex_lock(&dev->lock);
 if ((dev->cmds[seqno].inuse == 1) &&
  (dev->cmds[seqno].seqno == seqno)) {
  ret = dev->cmds[seqno].timeout;
 }
 mutex_unlock(&dev->lock);

 return ret;
}
