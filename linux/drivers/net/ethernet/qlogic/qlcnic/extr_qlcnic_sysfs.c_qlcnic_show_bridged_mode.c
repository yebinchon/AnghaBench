
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {int flags; TYPE_1__* ahw; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int capabilities; } ;


 int QLCNIC_BRIDGE_ENABLED ;
 int QLCNIC_FW_CAPABILITY_BDG ;
 struct qlcnic_adapter* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t qlcnic_show_bridged_mode(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct qlcnic_adapter *adapter = dev_get_drvdata(dev);
 int bridged_mode = 0;

 if (adapter->ahw->capabilities & QLCNIC_FW_CAPABILITY_BDG)
  bridged_mode = !!(adapter->flags & QLCNIC_BRIDGE_ENABLED);

 return sprintf(buf, "%d\n", bridged_mode);
}
