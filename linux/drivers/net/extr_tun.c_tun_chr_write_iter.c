
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int dummy; } ;
struct tun_file {int dummy; } ;
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {int f_flags; struct tun_file* private_data; } ;
typedef int ssize_t ;


 int EBADFD ;
 int O_NONBLOCK ;
 struct tun_struct* tun_get (struct tun_file*) ;
 int tun_get_user (struct tun_struct*,struct tun_file*,int *,struct iov_iter*,int,int) ;
 int tun_put (struct tun_struct*) ;

__attribute__((used)) static ssize_t tun_chr_write_iter(struct kiocb *iocb, struct iov_iter *from)
{
 struct file *file = iocb->ki_filp;
 struct tun_file *tfile = file->private_data;
 struct tun_struct *tun = tun_get(tfile);
 ssize_t result;

 if (!tun)
  return -EBADFD;

 result = tun_get_user(tun, tfile, ((void*)0), from,
         file->f_flags & O_NONBLOCK, 0);

 tun_put(tun);
 return result;
}
