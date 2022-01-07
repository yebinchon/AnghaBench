
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int IO_SLU_BITSTREAM ;
 int __genwqe_readq (struct genwqe_dev*,int ) ;
 struct genwqe_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t curr_bitstream_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 int curr_bitstream;
 struct genwqe_dev *cd = dev_get_drvdata(dev);

 curr_bitstream = __genwqe_readq(cd, IO_SLU_BITSTREAM) & 0x1;
 return sprintf(buf, "%d\n", curr_bitstream);
}
