
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_fw_version {int buildno; int hotfix; int minor; int major; int platform; } ;
struct mei_device {struct mei_fw_version* fw_ver; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int MEI_MAX_FW_VER_BLOCKS ;
 int PAGE_SIZE ;
 struct mei_device* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static ssize_t fw_ver_show(struct device *device,
      struct device_attribute *attr, char *buf)
{
 struct mei_device *dev = dev_get_drvdata(device);
 struct mei_fw_version *ver;
 ssize_t cnt = 0;
 int i;

 ver = dev->fw_ver;

 for (i = 0; i < MEI_MAX_FW_VER_BLOCKS; i++)
  cnt += scnprintf(buf + cnt, PAGE_SIZE - cnt, "%u:%u.%u.%u.%u\n",
     ver[i].platform, ver[i].major, ver[i].minor,
     ver[i].hotfix, ver[i].buildno);
 return cnt;
}
