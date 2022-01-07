
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_fcp_device {int list; int * dev; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct rcar_fcp_device* devm_kzalloc (int *,int,int ) ;
 int fcp_devices ;
 int fcp_lock ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int platform_set_drvdata (struct platform_device*,struct rcar_fcp_device*) ;
 int pm_runtime_enable (int *) ;

__attribute__((used)) static int rcar_fcp_probe(struct platform_device *pdev)
{
 struct rcar_fcp_device *fcp;

 fcp = devm_kzalloc(&pdev->dev, sizeof(*fcp), GFP_KERNEL);
 if (fcp == ((void*)0))
  return -ENOMEM;

 fcp->dev = &pdev->dev;

 pm_runtime_enable(&pdev->dev);

 mutex_lock(&fcp_lock);
 list_add_tail(&fcp->list, &fcp_devices);
 mutex_unlock(&fcp_lock);

 platform_set_drvdata(pdev, fcp);

 return 0;
}
