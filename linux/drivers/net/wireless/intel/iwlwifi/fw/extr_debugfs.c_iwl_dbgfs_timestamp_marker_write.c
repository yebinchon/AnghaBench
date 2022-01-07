
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_fw_runtime {int dummy; } ;
typedef int ssize_t ;


 int iwl_fw_trigger_timestamp (struct iwl_fw_runtime*,int ) ;
 int kstrtou32 (char*,int,int *) ;

__attribute__((used)) static ssize_t iwl_dbgfs_timestamp_marker_write(struct iwl_fw_runtime *fwrt,
      char *buf, size_t count)
{
 int ret;
 u32 delay;

 ret = kstrtou32(buf, 10, &delay);
 if (ret < 0)
  return ret;

 iwl_fw_trigger_timestamp(fwrt, delay);

 return count;
}
