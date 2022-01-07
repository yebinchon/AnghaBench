
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct device_node {int dummy; } ;
struct cqspi_flash_pdata {int clk_rate; int tslch_ns; int tchsh_ns; int tsd2d_ns; int tshsl_ns; int read_delay; } ;


 int ENXIO ;
 int dev_err (int *,char*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int cqspi_of_get_flash_pdata(struct platform_device *pdev,
        struct cqspi_flash_pdata *f_pdata,
        struct device_node *np)
{
 if (of_property_read_u32(np, "cdns,read-delay", &f_pdata->read_delay)) {
  dev_err(&pdev->dev, "couldn't determine read-delay\n");
  return -ENXIO;
 }

 if (of_property_read_u32(np, "cdns,tshsl-ns", &f_pdata->tshsl_ns)) {
  dev_err(&pdev->dev, "couldn't determine tshsl-ns\n");
  return -ENXIO;
 }

 if (of_property_read_u32(np, "cdns,tsd2d-ns", &f_pdata->tsd2d_ns)) {
  dev_err(&pdev->dev, "couldn't determine tsd2d-ns\n");
  return -ENXIO;
 }

 if (of_property_read_u32(np, "cdns,tchsh-ns", &f_pdata->tchsh_ns)) {
  dev_err(&pdev->dev, "couldn't determine tchsh-ns\n");
  return -ENXIO;
 }

 if (of_property_read_u32(np, "cdns,tslch-ns", &f_pdata->tslch_ns)) {
  dev_err(&pdev->dev, "couldn't determine tslch-ns\n");
  return -ENXIO;
 }

 if (of_property_read_u32(np, "spi-max-frequency", &f_pdata->clk_rate)) {
  dev_err(&pdev->dev, "couldn't determine spi-max-frequency\n");
  return -ENXIO;
 }

 return 0;
}
