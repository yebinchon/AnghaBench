
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_time_gran; int s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; } ;
struct inode {int i_fop; int * i_op; } ;
struct fs_context {int dummy; } ;


 int ENOMEM ;
 int IBMASMFS_MAGIC ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int S_IFDIR ;
 int d_make_root (struct inode*) ;
 int ibmasmfs_create_files (struct super_block*) ;
 int ibmasmfs_dir_ops ;
 struct inode* ibmasmfs_make_inode (struct super_block*,int) ;
 int ibmasmfs_s_ops ;
 int simple_dir_inode_operations ;

__attribute__((used)) static int ibmasmfs_fill_super(struct super_block *sb, struct fs_context *fc)
{
 struct inode *root;

 sb->s_blocksize = PAGE_SIZE;
 sb->s_blocksize_bits = PAGE_SHIFT;
 sb->s_magic = IBMASMFS_MAGIC;
 sb->s_op = &ibmasmfs_s_ops;
 sb->s_time_gran = 1;

 root = ibmasmfs_make_inode (sb, S_IFDIR | 0500);
 if (!root)
  return -ENOMEM;

 root->i_op = &simple_dir_inode_operations;
 root->i_fop = ibmasmfs_dir_ops;

 sb->s_root = d_make_root(root);
 if (!sb->s_root)
  return -ENOMEM;

 ibmasmfs_create_files(sb);
 return 0;
}
