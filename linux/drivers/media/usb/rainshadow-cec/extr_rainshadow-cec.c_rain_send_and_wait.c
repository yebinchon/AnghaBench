
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rain {int write_lock; int cmd_reply; int dev; int cmd_done; } ;


 int EIO ;
 int ETIMEDOUT ;
 int HZ ;
 int dev_dbg (int ,char*,char const*,int ,char const*) ;
 int init_completion (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rain_send (struct rain*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (int ,char const*,int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int rain_send_and_wait(struct rain *rain,
         const char *cmd, const char *reply)
{
 int err;

 init_completion(&rain->cmd_done);

 mutex_lock(&rain->write_lock);
 err = rain_send(rain, cmd);
 if (err)
  goto err;

 if (!wait_for_completion_timeout(&rain->cmd_done, HZ)) {
  err = -ETIMEDOUT;
  goto err;
 }
 if (reply && strncmp(rain->cmd_reply, reply, strlen(reply))) {
  dev_dbg(rain->dev,
    "transmit of '%s': received '%s' instead of '%s'\n",
    cmd, rain->cmd_reply, reply);
  err = -EIO;
 }
err:
 mutex_unlock(&rain->write_lock);
 return err;
}
