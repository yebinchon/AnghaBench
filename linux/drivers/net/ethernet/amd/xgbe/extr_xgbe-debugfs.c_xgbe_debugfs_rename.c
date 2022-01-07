
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xgbe_prv_data {TYPE_3__* xgbe_debugfs; TYPE_1__* netdev; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_6__ {int d_parent; TYPE_2__ d_name; } ;
struct TYPE_4__ {int name; } ;


 int GFP_KERNEL ;
 int debugfs_rename (int ,TYPE_3__*,int ,char*) ;
 char* kasprintf (int ,char*,int ) ;
 int kfree (char*) ;
 int strcmp (int ,char*) ;

void xgbe_debugfs_rename(struct xgbe_prv_data *pdata)
{
 char *buf;

 if (!pdata->xgbe_debugfs)
  return;

 buf = kasprintf(GFP_KERNEL, "amd-xgbe-%s", pdata->netdev->name);
 if (!buf)
  return;

 if (!strcmp(pdata->xgbe_debugfs->d_name.name, buf))
  goto out;

 debugfs_rename(pdata->xgbe_debugfs->d_parent, pdata->xgbe_debugfs,
         pdata->xgbe_debugfs->d_parent, buf);

out:
 kfree(buf);
}
