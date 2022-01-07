
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_fop; int * i_op; } ;
struct dentry {int d_sb; } ;


 int S_IFDIR ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (struct dentry*,char const*) ;
 int dput (struct dentry*) ;
 int ibmasmfs_dir_ops ;
 struct inode* ibmasmfs_make_inode (int ,int) ;
 int simple_dir_inode_operations ;

__attribute__((used)) static struct dentry *ibmasmfs_create_dir(struct dentry *parent,
    const char *name)
{
 struct dentry *dentry;
 struct inode *inode;

 dentry = d_alloc_name(parent, name);
 if (!dentry)
  return ((void*)0);

 inode = ibmasmfs_make_inode(parent->d_sb, S_IFDIR | 0500);
 if (!inode) {
  dput(dentry);
  return ((void*)0);
 }

 inode->i_op = &simple_dir_inode_operations;
 inode->i_fop = ibmasmfs_dir_ops;

 d_add(dentry, inode);
 return dentry;
}
