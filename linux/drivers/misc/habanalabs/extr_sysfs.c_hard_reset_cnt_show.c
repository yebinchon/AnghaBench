
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int hard_reset_cnt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct hl_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t hard_reset_cnt_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct hl_device *hdev = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", hdev->hard_reset_cnt);
}
