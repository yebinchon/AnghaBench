
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnp_dev {int dummy; } ;
struct nvt_dev {TYPE_1__* rdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_attr_wakeup_data ;
 int device_remove_file (int *,int *) ;
 int nvt_disable_cir (struct nvt_dev*) ;
 int nvt_enable_wake (struct nvt_dev*) ;
 struct nvt_dev* pnp_get_drvdata (struct pnp_dev*) ;

__attribute__((used)) static void nvt_remove(struct pnp_dev *pdev)
{
 struct nvt_dev *nvt = pnp_get_drvdata(pdev);

 device_remove_file(&nvt->rdev->dev, &dev_attr_wakeup_data);

 nvt_disable_cir(nvt);


 nvt_enable_wake(nvt);
}
