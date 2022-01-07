
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct brcms_debugfs_entry* i_private; } ;
struct file {int dummy; } ;
struct brcms_debugfs_entry {int drvr; int read; } ;


 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int brcms_debugfs_entry_open(struct inode *inode, struct file *f)
{
 struct brcms_debugfs_entry *entry = inode->i_private;

 return single_open(f, entry->read, entry->drvr);
}
