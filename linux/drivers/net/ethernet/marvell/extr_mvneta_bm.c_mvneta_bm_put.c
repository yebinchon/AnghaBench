
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_bm {int pdev; } ;


 int platform_device_put (int ) ;

void mvneta_bm_put(struct mvneta_bm *priv)
{
 platform_device_put(priv->pdev);
}
