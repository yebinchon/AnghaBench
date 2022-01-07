
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_file {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct tun_file* private_data; } ;


 int tun_detach (struct tun_file*,int) ;

__attribute__((used)) static int tun_chr_close(struct inode *inode, struct file *file)
{
 struct tun_file *tfile = file->private_data;

 tun_detach(tfile, 1);

 return 0;
}
