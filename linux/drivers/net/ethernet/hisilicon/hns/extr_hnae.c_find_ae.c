
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_ae_dev {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int __ae_match ;
 struct device* class_find_device (int ,int *,struct fwnode_handle const*,int ) ;
 struct hnae_ae_dev* cls_to_ae_dev (struct device*) ;
 int hnae_class ;

__attribute__((used)) static struct hnae_ae_dev *find_ae(const struct fwnode_handle *fwnode)
{
 struct device *dev;

 WARN_ON(!fwnode);

 dev = class_find_device(hnae_class, ((void*)0), fwnode, __ae_match);

 return dev ? cls_to_ae_dev(dev) : ((void*)0);
}
