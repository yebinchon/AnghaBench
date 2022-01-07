
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_queue {int dummy; } ;
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {int f_flags; struct tap_queue* private_data; } ;
typedef int ssize_t ;


 int O_NONBLOCK ;
 int tap_get_user (struct tap_queue*,int *,struct iov_iter*,int) ;

__attribute__((used)) static ssize_t tap_write_iter(struct kiocb *iocb, struct iov_iter *from)
{
 struct file *file = iocb->ki_filp;
 struct tap_queue *q = file->private_data;

 return tap_get_user(q, ((void*)0), from, file->f_flags & O_NONBLOCK);
}
