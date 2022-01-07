
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ics932s401_data {int* regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ICS932S401_MN_ENABLED ;
 size_t ICS932S401_REG_CTRL ;
 int calculate_pci_freq (struct ics932s401_data*) ;
 struct ics932s401_data* ics932s401_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_pci_clock_sel(struct device *dev,
      struct device_attribute *devattr,
      char *buf)
{
 struct ics932s401_data *data = ics932s401_update_device(dev);
 int freq;

 if (data->regs[ICS932S401_REG_CTRL] & ICS932S401_MN_ENABLED)
  freq = calculate_pci_freq(data);
 else
  freq = 33333;

 return sprintf(buf, "%d\n", freq);
}
