
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_mode; int i_ctime; int i_mtime; int i_atime; int i_ino; } ;


 int current_time (struct inode*) ;
 int get_next_ino () ;
 struct inode* new_inode (struct super_block*) ;

__attribute__((used)) static struct inode *ibmasmfs_make_inode(struct super_block *sb, int mode)
{
 struct inode *ret = new_inode(sb);

 if (ret) {
  ret->i_ino = get_next_ino();
  ret->i_mode = mode;
  ret->i_atime = ret->i_mtime = ret->i_ctime = current_time(ret);
 }
 return ret;
}
