
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_queue {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct tap_queue* private_data; } ;


 int tap_put_queue (struct tap_queue*) ;

__attribute__((used)) static int tap_release(struct inode *inode, struct file *file)
{
 struct tap_queue *q = file->private_data;
 tap_put_queue(q);
 return 0;
}
