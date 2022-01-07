
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_file {int flags; int fasync; } ;
struct file {struct tun_file* private_data; } ;


 int PIDTYPE_TGID ;
 int TUN_FASYNC ;
 int __f_setown (struct file*,int ,int ,int ) ;
 int current ;
 int fasync_helper (int,struct file*,int,int *) ;
 int task_pid (int ) ;

__attribute__((used)) static int tun_chr_fasync(int fd, struct file *file, int on)
{
 struct tun_file *tfile = file->private_data;
 int ret;

 if ((ret = fasync_helper(fd, file, on, &tfile->fasync)) < 0)
  goto out;

 if (on) {
  __f_setown(file, task_pid(current), PIDTYPE_TGID, 0);
  tfile->flags |= TUN_FASYNC;
 } else
  tfile->flags &= ~TUN_FASYNC;
 ret = 0;
out:
 return ret;
}
