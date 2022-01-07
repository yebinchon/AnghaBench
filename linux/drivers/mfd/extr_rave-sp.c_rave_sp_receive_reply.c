
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rave_sp_reply {unsigned char const code; unsigned char const ackid; size_t const length; int received; int data; } ;
struct rave_sp {int reply_lock; struct rave_sp_reply* reply; TYPE_1__* serdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int complete (int *) ;
 int dev_dbg (struct device*,char*,unsigned char const,size_t const) ;
 int dev_err (struct device*,char*) ;
 int memcpy (int ,unsigned char const*,size_t const) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void rave_sp_receive_reply(struct rave_sp *sp,
      const unsigned char *data, size_t length)
{
 struct device *dev = &sp->serdev->dev;
 struct rave_sp_reply *reply;
 const size_t payload_length = length - 2;

 mutex_lock(&sp->reply_lock);
 reply = sp->reply;

 if (reply) {
  if (reply->code == data[0] && reply->ackid == data[1] &&
      payload_length >= reply->length) {




   memcpy(reply->data, &data[2], reply->length);
   complete(&reply->received);
   sp->reply = ((void*)0);
  } else {
   dev_err(dev, "Ignoring incorrect reply\n");
   dev_dbg(dev, "Code:   expected = 0x%08x received = 0x%08x\n",
    reply->code, data[0]);
   dev_dbg(dev, "ACK ID: expected = 0x%08x received = 0x%08x\n",
    reply->ackid, data[1]);
   dev_dbg(dev, "Length: expected = %zu received = %zu\n",
    reply->length, payload_length);
  }
 }

 mutex_unlock(&sp->reply_lock);
}
