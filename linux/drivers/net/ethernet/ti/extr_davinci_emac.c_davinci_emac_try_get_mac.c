
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EINVAL ;
 int ti_cm_get_macid (TYPE_1__*,int,int *) ;

__attribute__((used)) static int davinci_emac_try_get_mac(struct platform_device *pdev,
        int instance, u8 *mac_addr)
{
 if (!pdev->dev.of_node)
  return -EINVAL;

 return ti_cm_get_macid(&pdev->dev, instance, mac_addr);
}
