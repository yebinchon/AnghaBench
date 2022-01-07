
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int delay; } ;
struct iwl_fw_runtime {TYPE_1__ timestamp; } ;
typedef int ssize_t ;


 int jiffies_to_msecs (int ) ;
 int scnprintf (char*,size_t,char*,int) ;

__attribute__((used)) static ssize_t iwl_dbgfs_timestamp_marker_read(struct iwl_fw_runtime *fwrt,
            size_t size, char *buf)
{
 u32 delay_secs = jiffies_to_msecs(fwrt->timestamp.delay) / 1000;

 return scnprintf(buf, size, "%d\n", delay_secs);
}
