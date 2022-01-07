
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wil6210_priv {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {int fops; int mode; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* dbg_files ;
 int debugfs_create_file (int ,int ,struct dentry*,struct wil6210_priv*,int ) ;

__attribute__((used)) static void wil6210_debugfs_init_files(struct wil6210_priv *wil,
           struct dentry *dbg)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dbg_files); i++)
  debugfs_create_file(dbg_files[i].name, dbg_files[i].mode, dbg,
        wil, dbg_files[i].fops);
}
