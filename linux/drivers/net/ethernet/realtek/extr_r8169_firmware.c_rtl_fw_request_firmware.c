
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_fw {int fw_name; int dev; int fw; } ;


 int EINVAL ;
 int dev_err (int ,char*,int ,int) ;
 int release_firmware (int ) ;
 int request_firmware (int *,int ,int ) ;
 int rtl_fw_data_ok (struct rtl_fw*) ;
 int rtl_fw_format_ok (struct rtl_fw*) ;

int rtl_fw_request_firmware(struct rtl_fw *rtl_fw)
{
 int rc;

 rc = request_firmware(&rtl_fw->fw, rtl_fw->fw_name, rtl_fw->dev);
 if (rc < 0)
  goto out;

 if (!rtl_fw_format_ok(rtl_fw) || !rtl_fw_data_ok(rtl_fw)) {
  release_firmware(rtl_fw->fw);
  rc = -EINVAL;
  goto out;
 }

 return 0;
out:
 dev_err(rtl_fw->dev, "Unable to load firmware %s (%d)\n",
  rtl_fw->fw_name, rc);
 return rc;
}
