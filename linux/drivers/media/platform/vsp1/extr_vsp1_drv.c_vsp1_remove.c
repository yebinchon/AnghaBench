
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_device {int fcp; } ;
struct platform_device {int dev; } ;


 struct vsp1_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int rcar_fcp_put (int ) ;
 int vsp1_destroy_entities (struct vsp1_device*) ;

__attribute__((used)) static int vsp1_remove(struct platform_device *pdev)
{
 struct vsp1_device *vsp1 = platform_get_drvdata(pdev);

 vsp1_destroy_entities(vsp1);
 rcar_fcp_put(vsp1->fcp);

 pm_runtime_disable(&pdev->dev);

 return 0;
}
