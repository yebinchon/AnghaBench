
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int debugfs_entry; } ;
struct bdisp_dev {TYPE_1__ dbg; int id; } ;
typedef int dirname ;


 char* BDISP_NAME ;
 int ENOMEM ;
 int bdisp_dbg_create_entry (int ) ;
 int bdisp_debugfs_remove (struct bdisp_dev*) ;
 int debugfs_create_dir (char*,int *) ;
 int last_nodes ;
 int last_nodes_raw ;
 int last_request ;
 int perf ;
 int regs ;
 int snprintf (char*,int,char*,char*,int ) ;

int bdisp_debugfs_create(struct bdisp_dev *bdisp)
{
 char dirname[16];

 snprintf(dirname, sizeof(dirname), "%s%d", BDISP_NAME, bdisp->id);
 bdisp->dbg.debugfs_entry = debugfs_create_dir(dirname, ((void*)0));
 if (!bdisp->dbg.debugfs_entry)
  goto err;

 if (!bdisp_dbg_create_entry(regs))
  goto err;

 if (!bdisp_dbg_create_entry(last_nodes))
  goto err;

 if (!bdisp_dbg_create_entry(last_nodes_raw))
  goto err;

 if (!bdisp_dbg_create_entry(last_request))
  goto err;

 if (!bdisp_dbg_create_entry(perf))
  goto err;

 return 0;

err:
 bdisp_debugfs_remove(bdisp);
 return -ENOMEM;
}
