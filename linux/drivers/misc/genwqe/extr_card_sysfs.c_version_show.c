
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct genwqe_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int IO_APP_UNITCFG ;
 int IO_SLU_UNITCFG ;
 int __genwqe_readq (struct genwqe_dev*,int ) ;
 struct genwqe_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int ,int ) ;

__attribute__((used)) static ssize_t version_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 u64 slu_id, app_id;
 struct genwqe_dev *cd = dev_get_drvdata(dev);

 slu_id = __genwqe_readq(cd, IO_SLU_UNITCFG);
 app_id = __genwqe_readq(cd, IO_APP_UNITCFG);

 return sprintf(buf, "%016llx.%016llx\n", slu_id, app_id);
}
