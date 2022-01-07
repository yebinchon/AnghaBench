
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_3__ {int num_gphy; } ;
struct bcm_sf2_priv {TYPE_2__* dev; TYPE_1__ hw_params; } ;
struct TYPE_4__ {int ds; } ;


 int bcm_sf2_gphy_enable_set (int ,int) ;
 struct bcm_sf2_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void bcm_sf2_sw_shutdown(struct platform_device *pdev)
{
 struct bcm_sf2_priv *priv = platform_get_drvdata(pdev);







 if (priv->hw_params.num_gphy == 1)
  bcm_sf2_gphy_enable_set(priv->dev->ds, 1);
}
