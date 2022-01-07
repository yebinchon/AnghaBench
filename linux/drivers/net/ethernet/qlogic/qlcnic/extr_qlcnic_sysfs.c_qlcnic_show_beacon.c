
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int beacon_state; } ;


 struct qlcnic_adapter* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t qlcnic_show_beacon(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct qlcnic_adapter *adapter = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", adapter->ahw->beacon_state);
}
