
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct intel_spi {int dummy; } ;


 int intel_spi_remove (struct intel_spi*) ;
 struct intel_spi* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int intel_spi_platform_remove(struct platform_device *pdev)
{
 struct intel_spi *ispi = platform_get_drvdata(pdev);

 return intel_spi_remove(ispi);
}
