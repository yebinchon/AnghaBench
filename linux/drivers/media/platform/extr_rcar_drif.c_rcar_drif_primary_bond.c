
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int of_property_read_bool (int ,char*) ;

__attribute__((used)) static bool rcar_drif_primary_bond(struct platform_device *pdev)
{
 return of_property_read_bool(pdev->dev.of_node, "renesas,primary-bond");
}
