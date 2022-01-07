
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;


 int ENOENT ;
 struct platform_device* ERR_PTR (int ) ;
 int dev_warn (struct device*,char*) ;
 struct device_node* of_get_compatible_child (int ,char*) ;
 int of_node_put (struct device_node*) ;
 struct platform_device* of_platform_device_create (struct device_node*,int *,struct device*) ;

__attribute__((used)) static struct platform_device *meson_mx_mmc_slot_pdev(struct device *parent)
{
 struct device_node *slot_node;
 struct platform_device *pdev;






 slot_node = of_get_compatible_child(parent->of_node, "mmc-slot");
 if (!slot_node) {
  dev_warn(parent, "no 'mmc-slot' sub-node found\n");
  return ERR_PTR(-ENOENT);
 }

 pdev = of_platform_device_create(slot_node, ((void*)0), parent);
 of_node_put(slot_node);

 return pdev;
}
