
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct genwqe_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct genwqe_dev* dev_get_drvdata (struct device*) ;
 int genwqe_base_clock_frequency (struct genwqe_dev*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t base_clock_show(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 u64 base_clock;
 struct genwqe_dev *cd = dev_get_drvdata(dev);

 base_clock = genwqe_base_clock_frequency(cd);
 return sprintf(buf, "%lld\n", base_clock);
}
