
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct channel_data* private_data; } ;
struct cosa_data {int dummy; } ;
struct channel_data {struct cosa_data* cosa; } ;


 int cosa_chardev_mutex ;
 long cosa_ioctl_common (struct cosa_data*,struct channel_data*,unsigned int,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long cosa_chardev_ioctl(struct file *file, unsigned int cmd,
       unsigned long arg)
{
 struct channel_data *channel = file->private_data;
 struct cosa_data *cosa;
 long ret;

 mutex_lock(&cosa_chardev_mutex);
 cosa = channel->cosa;
 ret = cosa_ioctl_common(cosa, channel, cmd, arg);
 mutex_unlock(&cosa_chardev_mutex);
 return ret;
}
