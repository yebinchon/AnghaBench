
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ics932s401_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int calculate_cpu_freq (struct ics932s401_data*) ;
 struct ics932s401_data* ics932s401_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_cpu_clock(struct device *dev,
         struct device_attribute *devattr,
         char *buf)
{
 struct ics932s401_data *data = ics932s401_update_device(dev);

 return sprintf(buf, "%d\n", calculate_cpu_freq(data));
}
