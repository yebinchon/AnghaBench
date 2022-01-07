
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_fw_status {int count; int * status; } ;
typedef int ssize_t ;


 int EINVAL ;
 size_t MEI_FW_STATUS_STR_SZ ;
 scalar_t__ scnprintf (char*,size_t,char*,int ) ;

ssize_t mei_fw_status2str(struct mei_fw_status *fw_status,
     char *buf, size_t len)
{
 ssize_t cnt = 0;
 int i;

 buf[0] = '\0';

 if (len < MEI_FW_STATUS_STR_SZ)
  return -EINVAL;

 for (i = 0; i < fw_status->count; i++)
  cnt += scnprintf(buf + cnt, len - cnt, "%08X ",
    fw_status->status[i]);


 buf[cnt] = '\0';
 return cnt;
}
