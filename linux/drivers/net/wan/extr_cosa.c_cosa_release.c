
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct channel_data* private_data; } ;
struct cosa_data {int lock; int usage; } ;
struct channel_data {int usage; struct cosa_data* cosa; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cosa_release(struct inode *inode, struct file *file)
{
 struct channel_data *channel = file->private_data;
 struct cosa_data *cosa;
 unsigned long flags;

 cosa = channel->cosa;
 spin_lock_irqsave(&cosa->lock, flags);
 cosa->usage--;
 channel->usage--;
 spin_unlock_irqrestore(&cosa->lock, flags);
 return 0;
}
