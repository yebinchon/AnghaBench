
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct cqspi_st {void* rclk_en; int trigger_address; int fifo_width; int fifo_depth; void* is_decoded_cs; } ;


 int ENXIO ;
 int dev_err (TYPE_1__*,char*) ;
 void* of_property_read_bool (struct device_node*,char*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;
 struct cqspi_st* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int cqspi_of_get_pdata(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct cqspi_st *cqspi = platform_get_drvdata(pdev);

 cqspi->is_decoded_cs = of_property_read_bool(np, "cdns,is-decoded-cs");

 if (of_property_read_u32(np, "cdns,fifo-depth", &cqspi->fifo_depth)) {
  dev_err(&pdev->dev, "couldn't determine fifo-depth\n");
  return -ENXIO;
 }

 if (of_property_read_u32(np, "cdns,fifo-width", &cqspi->fifo_width)) {
  dev_err(&pdev->dev, "couldn't determine fifo-width\n");
  return -ENXIO;
 }

 if (of_property_read_u32(np, "cdns,trigger-address",
     &cqspi->trigger_address)) {
  dev_err(&pdev->dev, "couldn't determine trigger-address\n");
  return -ENXIO;
 }

 cqspi->rclk_en = of_property_read_bool(np, "cdns,rclk-en");

 return 0;
}
