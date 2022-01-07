
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int freq; } ;
struct TYPE_4__ {TYPE_1__ clock; } ;
struct cc770_priv {int cpu_interface; int bus_config; int clkout; TYPE_2__ can; } ;
struct cc770_platform_data {int osc_freq; int cir; int bcr; int cor; } ;


 int CPUIF_DSC ;
 struct cc770_platform_data* dev_get_platdata (int *) ;

__attribute__((used)) static int cc770_get_platform_data(struct platform_device *pdev,
       struct cc770_priv *priv)
{

 struct cc770_platform_data *pdata = dev_get_platdata(&pdev->dev);

 priv->can.clock.freq = pdata->osc_freq;
 if (priv->cpu_interface & CPUIF_DSC)
  priv->can.clock.freq /= 2;
 priv->clkout = pdata->cor;
 priv->bus_config = pdata->bcr;
 priv->cpu_interface = pdata->cir;

 return 0;
}
