
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int lock; } ;
struct saa6588_command {int poll_mask; int * event_list; struct file* instance; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int SAA6588_CMD_POLL ;
 int core ;
 int ioctl ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int saa_call_all (struct saa7134_dev*,int ,int ,int ,struct saa6588_command*) ;
 int v4l2_ctrl_poll (struct file*,int *) ;
 struct saa7134_dev* video_drvdata (struct file*) ;

__attribute__((used)) static __poll_t radio_poll(struct file *file, poll_table *wait)
{
 struct saa7134_dev *dev = video_drvdata(file);
 struct saa6588_command cmd;
 __poll_t rc = v4l2_ctrl_poll(file, wait);

 cmd.instance = file;
 cmd.event_list = wait;
 cmd.poll_mask = 0;
 mutex_lock(&dev->lock);
 saa_call_all(dev, core, ioctl, SAA6588_CMD_POLL, &cmd);
 mutex_unlock(&dev->lock);

 return rc | cmd.poll_mask;
}
