
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_ecc {int dummy; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 struct ingenic_ecc* ERR_PTR (int ) ;

struct ingenic_ecc *of_ingenic_ecc_get(struct device_node *np)
{
 return ERR_PTR(-ENODEV);
}
