
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int name; int dev; } ;
struct mtk_mdp_dev {int * comp; int job_wq; int v4l2_dev; } ;


 int ARRAY_SIZE (int *) ;
 int destroy_workqueue (int ) ;
 int dev_dbg (int *,char*,int ) ;
 int flush_workqueue (int ) ;
 int mtk_mdp_comp_deinit (int *,int ) ;
 int mtk_mdp_unregister_m2m_device (struct mtk_mdp_dev*) ;
 struct mtk_mdp_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int v4l2_device_unregister (int *) ;
 int vb2_dma_contig_clear_max_seg_size (int *) ;

__attribute__((used)) static int mtk_mdp_remove(struct platform_device *pdev)
{
 struct mtk_mdp_dev *mdp = platform_get_drvdata(pdev);
 int i;

 pm_runtime_disable(&pdev->dev);
 vb2_dma_contig_clear_max_seg_size(&pdev->dev);
 mtk_mdp_unregister_m2m_device(mdp);
 v4l2_device_unregister(&mdp->v4l2_dev);

 flush_workqueue(mdp->job_wq);
 destroy_workqueue(mdp->job_wq);

 for (i = 0; i < ARRAY_SIZE(mdp->comp); i++)
  mtk_mdp_comp_deinit(&pdev->dev, mdp->comp[i]);

 dev_dbg(&pdev->dev, "%s driver unloaded\n", pdev->name);
 return 0;
}
