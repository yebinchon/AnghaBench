
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dummy; } ;
struct nvt_dev {int dummy; } ;


 int nvt_enable_wake (struct nvt_dev*) ;
 struct nvt_dev* pnp_get_drvdata (struct pnp_dev*) ;

__attribute__((used)) static void nvt_shutdown(struct pnp_dev *pdev)
{
 struct nvt_dev *nvt = pnp_get_drvdata(pdev);

 nvt_enable_wake(nvt);
}
