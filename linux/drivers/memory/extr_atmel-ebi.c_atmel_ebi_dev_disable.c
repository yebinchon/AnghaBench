
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int length; void* value; void* name; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct atmel_ebi {struct device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* devm_kstrdup (struct device*,char*,int ) ;
 struct property* devm_kzalloc (struct device*,int,int ) ;
 int of_update_property (struct device_node*,struct property*) ;

__attribute__((used)) static int atmel_ebi_dev_disable(struct atmel_ebi *ebi, struct device_node *np)
{
 struct device *dev = ebi->dev;
 struct property *newprop;

 newprop = devm_kzalloc(dev, sizeof(*newprop), GFP_KERNEL);
 if (!newprop)
  return -ENOMEM;

 newprop->name = devm_kstrdup(dev, "status", GFP_KERNEL);
 if (!newprop->name)
  return -ENOMEM;

 newprop->value = devm_kstrdup(dev, "disabled", GFP_KERNEL);
 if (!newprop->value)
  return -ENOMEM;

 newprop->length = sizeof("disabled");

 return of_update_property(np, newprop);
}
