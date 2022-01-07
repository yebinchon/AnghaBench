
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633_adc {int dummy; } ;
struct pcf50633 {int adc_pdev; } ;


 struct pcf50633_adc* platform_get_drvdata (int ) ;

__attribute__((used)) static inline struct pcf50633_adc *__to_adc(struct pcf50633 *pcf)
{
 return platform_get_drvdata(pcf->adc_pdev);
}
