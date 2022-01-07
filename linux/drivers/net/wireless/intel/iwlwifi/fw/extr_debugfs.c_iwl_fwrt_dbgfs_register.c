
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wk; } ;
struct iwl_fw_runtime {TYPE_1__ timestamp; } ;
struct dentry {int dummy; } ;


 int FWRT_DEBUGFS_ADD_FILE (int ,struct dentry*,int) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int iwl_fw_timestamp_marker_wk ;
 int send_hcmd ;
 int timestamp_marker ;

void iwl_fwrt_dbgfs_register(struct iwl_fw_runtime *fwrt,
       struct dentry *dbgfs_dir)
{
 INIT_DELAYED_WORK(&fwrt->timestamp.wk, iwl_fw_timestamp_marker_wk);
 FWRT_DEBUGFS_ADD_FILE(timestamp_marker, dbgfs_dir, 0200);
 FWRT_DEBUGFS_ADD_FILE(send_hcmd, dbgfs_dir, 0200);
}
