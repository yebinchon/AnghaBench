
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsaf_device {struct device* dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct dsaf_device* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dev_set_drvdata (struct device*,struct dsaf_device*) ;
 struct dsaf_device* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct dsaf_device *hns_dsaf_alloc_dev(struct device *dev,
           size_t sizeof_priv)
{
 struct dsaf_device *dsaf_dev;

 dsaf_dev = devm_kzalloc(dev,
    sizeof(*dsaf_dev) + sizeof_priv, GFP_KERNEL);
 if (unlikely(!dsaf_dev)) {
  dsaf_dev = ERR_PTR(-ENOMEM);
 } else {
  dsaf_dev->dev = dev;
  dev_set_drvdata(dev, dsaf_dev);
 }

 return dsaf_dev;
}
