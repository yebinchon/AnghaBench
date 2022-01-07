
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {struct hl_debugfs_entry* i_private; } ;
struct hl_debugfs_entry {TYPE_1__* info_ent; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int show; } ;


 int single_open (struct file*,int ,struct hl_debugfs_entry*) ;

__attribute__((used)) static int hl_debugfs_open(struct inode *inode, struct file *file)
{
 struct hl_debugfs_entry *node = inode->i_private;

 return single_open(file, node->info_ent->show, node);
}
