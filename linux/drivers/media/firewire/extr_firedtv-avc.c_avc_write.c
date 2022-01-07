
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {int avc_reply_received; int device; int avc_wait; int avc_data_length; int avc_data; } ;


 int ETIMEDOUT ;
 int FCP_COMMAND_REGISTER ;
 int avc_debug ;
 int debug_fcp (int ,int ) ;
 int dev_err (int ,char*) ;
 int fdtv_write (struct firedtv*,int ,int ,int ) ;
 int msecs_to_jiffies (int) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int avc_write(struct firedtv *fdtv)
{
 int err, retry;

 fdtv->avc_reply_received = 0;

 for (retry = 0; retry < 6; retry++) {
  if (unlikely(avc_debug))
   debug_fcp(fdtv->avc_data, fdtv->avc_data_length);

  err = fdtv_write(fdtv, FCP_COMMAND_REGISTER,
     fdtv->avc_data, fdtv->avc_data_length);
  if (err) {
   dev_err(fdtv->device, "FCP command write failed\n");

   return err;
  }





  if (wait_event_timeout(fdtv->avc_wait,
           fdtv->avc_reply_received,
           msecs_to_jiffies(200)) != 0)
   return 0;
 }
 dev_err(fdtv->device, "FCP response timed out\n");

 return -ETIMEDOUT;
}
