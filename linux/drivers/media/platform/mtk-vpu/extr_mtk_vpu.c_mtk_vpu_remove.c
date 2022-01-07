
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ wq; } ;
struct mtk_vpu {int clk; int vpu_mutex; TYPE_1__ wdt; } ;


 int D_FW ;
 int P_FW ;
 int clk_unprepare (int ) ;
 int debugfs_remove (int ) ;
 int destroy_workqueue (scalar_t__) ;
 int flush_workqueue (scalar_t__) ;
 int mutex_destroy (int *) ;
 struct mtk_vpu* platform_get_drvdata (struct platform_device*) ;
 int vpu_debugfs ;
 int vpu_free_ext_mem (struct mtk_vpu*,int ) ;

__attribute__((used)) static int mtk_vpu_remove(struct platform_device *pdev)
{
 struct mtk_vpu *vpu = platform_get_drvdata(pdev);




 if (vpu->wdt.wq) {
  flush_workqueue(vpu->wdt.wq);
  destroy_workqueue(vpu->wdt.wq);
 }
 vpu_free_ext_mem(vpu, P_FW);
 vpu_free_ext_mem(vpu, D_FW);
 mutex_destroy(&vpu->vpu_mutex);
 clk_unprepare(vpu->clk);

 return 0;
}
