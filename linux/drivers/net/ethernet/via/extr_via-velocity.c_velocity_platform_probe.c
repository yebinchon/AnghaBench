
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct velocity_info_tbl {int dummy; } ;
struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct velocity_info_tbl* data; } ;


 int BUS_PLATFORM ;
 int EINVAL ;
 int irq_of_parse_and_map (int ,int ) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 int velocity_of_ids ;
 int velocity_probe (TYPE_1__*,int,struct velocity_info_tbl const*,int ) ;

__attribute__((used)) static int velocity_platform_probe(struct platform_device *pdev)
{
 const struct of_device_id *of_id;
 const struct velocity_info_tbl *info;
 int irq;

 of_id = of_match_device(velocity_of_ids, &pdev->dev);
 if (!of_id)
  return -EINVAL;
 info = of_id->data;

 irq = irq_of_parse_and_map(pdev->dev.of_node, 0);
 if (!irq)
  return -EINVAL;

 return velocity_probe(&pdev->dev, irq, info, BUS_PLATFORM);
}
