
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct brcmf_pub {TYPE_1__* wiphy; } ;
struct TYPE_2__ {struct dentry* debugfsdir; } ;



struct dentry *brcmf_debugfs_get_devdir(struct brcmf_pub *drvr)
{
 return drvr->wiphy->debugfsdir;
}
