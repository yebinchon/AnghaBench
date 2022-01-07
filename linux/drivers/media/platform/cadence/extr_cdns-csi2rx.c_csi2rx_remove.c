
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct csi2rx_priv {int subdev; } ;


 int kfree (struct csi2rx_priv*) ;
 struct csi2rx_priv* platform_get_drvdata (struct platform_device*) ;
 int v4l2_async_unregister_subdev (int *) ;

__attribute__((used)) static int csi2rx_remove(struct platform_device *pdev)
{
 struct csi2rx_priv *csi2rx = platform_get_drvdata(pdev);

 v4l2_async_unregister_subdev(&csi2rx->subdev);
 kfree(csi2rx);

 return 0;
}
