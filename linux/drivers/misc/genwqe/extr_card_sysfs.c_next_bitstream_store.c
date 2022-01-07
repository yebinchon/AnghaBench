
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int softreset; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int IO_SLC_CFGREG_SOFTRESET ;
 int __genwqe_writeq (struct genwqe_dev*,int ,int) ;
 struct genwqe_dev* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoint (char const*,int ,int*) ;

__attribute__((used)) static ssize_t next_bitstream_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 int partition;
 struct genwqe_dev *cd = dev_get_drvdata(dev);

 if (kstrtoint(buf, 0, &partition) < 0)
  return -EINVAL;

 switch (partition) {
 case 0x0:
  cd->softreset = 0x78;
  break;
 case 0x1:
  cd->softreset = 0x7c;
  break;
 default:
  return -EINVAL;
 }

 __genwqe_writeq(cd, IO_SLC_CFGREG_SOFTRESET, cd->softreset);
 return count;
}
