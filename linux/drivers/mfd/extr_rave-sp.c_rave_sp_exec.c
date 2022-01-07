
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
struct rave_sp_reply {void* data; size_t length; int received; int code; void* ackid; } ;
struct rave_sp {int bus_lock; int reply_lock; struct rave_sp_reply* reply; TYPE_3__* serdev; int ackid; TYPE_2__* variant; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int (* translate ) (unsigned char) ;} ;
struct TYPE_5__ {TYPE_1__ cmd; } ;


 int COMPLETION_INITIALIZER_ONSTACK (int ) ;
 int ETIMEDOUT ;
 int HZ ;
 void* atomic_inc_return (int *) ;
 int dev_err (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rave_sp_reply_code (void*) ;
 int rave_sp_write (struct rave_sp*,unsigned char*,size_t) ;
 int stub1 (unsigned char) ;
 int wait_for_completion_timeout (int *,int ) ;

int rave_sp_exec(struct rave_sp *sp,
   void *__data, size_t data_size,
   void *reply_data, size_t reply_data_size)
{
 struct rave_sp_reply reply = {
  .data = reply_data,
  .length = reply_data_size,
  .received = COMPLETION_INITIALIZER_ONSTACK(reply.received),
 };
 unsigned char *data = __data;
 int command, ret = 0;
 u8 ackid;

 command = sp->variant->cmd.translate(data[0]);
 if (command < 0)
  return command;

 ackid = atomic_inc_return(&sp->ackid);
 reply.ackid = ackid;
 reply.code = rave_sp_reply_code((u8)command),

 mutex_lock(&sp->bus_lock);

 mutex_lock(&sp->reply_lock);
 sp->reply = &reply;
 mutex_unlock(&sp->reply_lock);

 data[0] = command;
 data[1] = ackid;

 rave_sp_write(sp, data, data_size);

 if (!wait_for_completion_timeout(&reply.received, HZ)) {
  dev_err(&sp->serdev->dev, "Command timeout\n");
  ret = -ETIMEDOUT;

  mutex_lock(&sp->reply_lock);
  sp->reply = ((void*)0);
  mutex_unlock(&sp->reply_lock);
 }

 mutex_unlock(&sp->bus_lock);
 return ret;
}
