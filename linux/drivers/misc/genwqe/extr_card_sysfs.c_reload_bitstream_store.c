
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {scalar_t__ card_state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t EIO ;
 scalar_t__ GENWQE_CARD_RELOAD_BITSTREAM ;
 scalar_t__ GENWQE_CARD_UNUSED ;
 scalar_t__ GENWQE_CARD_USED ;
 struct genwqe_dev* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoint (char const*,int ,int*) ;

__attribute__((used)) static ssize_t reload_bitstream_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 int reload;
 struct genwqe_dev *cd = dev_get_drvdata(dev);

 if (kstrtoint(buf, 0, &reload) < 0)
  return -EINVAL;

 if (reload == 0x1) {
  if (cd->card_state == GENWQE_CARD_UNUSED ||
      cd->card_state == GENWQE_CARD_USED)
   cd->card_state = GENWQE_CARD_RELOAD_BITSTREAM;
  else
   return -EIO;
 } else {
  return -EINVAL;
 }

 return count;
}
