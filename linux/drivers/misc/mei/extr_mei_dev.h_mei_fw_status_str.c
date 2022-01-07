
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_fw_status {int dummy; } ;
struct mei_device {int dummy; } ;
typedef int ssize_t ;


 int MEI_FW_STATUS_STR_SZ ;
 int mei_fw_status (struct mei_device*,struct mei_fw_status*) ;
 int mei_fw_status2str (struct mei_fw_status*,char*,int ) ;

__attribute__((used)) static inline ssize_t mei_fw_status_str(struct mei_device *dev,
     char *buf, size_t len)
{
 struct mei_fw_status fw_status;
 int ret;

 buf[0] = '\0';

 ret = mei_fw_status(dev, &fw_status);
 if (ret)
  return ret;

 ret = mei_fw_status2str(&fw_status, buf, MEI_FW_STATUS_STR_SZ);

 return ret;
}
