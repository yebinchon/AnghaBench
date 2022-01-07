
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct of_device_id {struct atmel_pmecc_caps* data; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;
struct atmel_pmecc_caps {int dummy; } ;
struct atmel_pmecc {int dummy; } ;


 int EINVAL ;
 struct atmel_pmecc* ERR_PTR (int ) ;
 struct atmel_pmecc_caps at91sam9g45_caps ;
 struct atmel_pmecc* atmel_pmecc_create (struct platform_device*,struct atmel_pmecc_caps const*,int,int) ;
 struct atmel_pmecc* atmel_pmecc_get_by_node (struct device*,struct device_node*) ;
 int atmel_pmecc_legacy_match ;
 struct of_device_id* of_match_node (int ,int ) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int of_property_read_bool (int ,char*) ;
 struct platform_device* to_platform_device (struct device*) ;

struct atmel_pmecc *devm_atmel_pmecc_get(struct device *userdev)
{
 struct atmel_pmecc *pmecc;
 struct device_node *np;

 if (!userdev)
  return ERR_PTR(-EINVAL);

 if (!userdev->of_node)
  return ((void*)0);

 np = of_parse_phandle(userdev->of_node, "ecc-engine", 0);
 if (np) {
  pmecc = atmel_pmecc_get_by_node(userdev, np);
  of_node_put(np);
 } else {





  struct platform_device *pdev = to_platform_device(userdev);
  const struct atmel_pmecc_caps *caps;
  const struct of_device_id *match;


  if (!of_property_read_bool(userdev->of_node,
        "atmel,has-pmecc"))
   return ((void*)0);

  caps = &at91sam9g45_caps;


  match = of_match_node(atmel_pmecc_legacy_match,
          userdev->of_node);
  if (match && match->data)
   caps = match->data;

  pmecc = atmel_pmecc_create(pdev, caps, 1, 2);
 }

 return pmecc;
}
