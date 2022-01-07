
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct genwqe_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int IO_SLC_QUEUE_WTIME ;
 int __genwqe_readq (struct genwqe_dev*,int ) ;
 struct genwqe_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t queue_working_time_show(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 u64 t;
 struct genwqe_dev *cd = dev_get_drvdata(dev);

 t = __genwqe_readq(cd, IO_SLC_QUEUE_WTIME);
 return sprintf(buf, "%016llx\n", t);
}
