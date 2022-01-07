
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_private; } ;
struct file {scalar_t__ private_data; } ;
struct adapter {int dummy; } ;


 int FW_PARAM_DEV_FWCACHE_FLUSH ;
 int t4_fwcache (struct adapter*,int ) ;

int mem_open(struct inode *inode, struct file *file)
{
 unsigned int mem;
 struct adapter *adap;

 file->private_data = inode->i_private;

 mem = (uintptr_t)file->private_data & 0x7;
 adap = file->private_data - mem;

 (void)t4_fwcache(adap, FW_PARAM_DEV_FWCACHE_FLUSH);

 return 0;
}
