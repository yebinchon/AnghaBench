
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpu_ipi_desc {char const* name; void* priv; scalar_t__ handler; } ;
struct platform_device {int dev; } ;
struct mtk_vpu {struct vpu_ipi_desc* ipi_desc; } ;
typedef scalar_t__ ipi_handler_t ;
typedef enum ipi_id { ____Placeholder_ipi_id } ipi_id ;


 int EINVAL ;
 int EPROBE_DEFER ;
 int IPI_MAX ;
 int dev_err (int *,char*,...) ;
 struct mtk_vpu* platform_get_drvdata (struct platform_device*) ;

int vpu_ipi_register(struct platform_device *pdev,
       enum ipi_id id, ipi_handler_t handler,
       const char *name, void *priv)
{
 struct mtk_vpu *vpu = platform_get_drvdata(pdev);
 struct vpu_ipi_desc *ipi_desc;

 if (!vpu) {
  dev_err(&pdev->dev, "vpu device in not ready\n");
  return -EPROBE_DEFER;
 }

 if (id >= 0 && id < IPI_MAX && handler) {
  ipi_desc = vpu->ipi_desc;
  ipi_desc[id].name = name;
  ipi_desc[id].handler = handler;
  ipi_desc[id].priv = priv;
  return 0;
 }

 dev_err(&pdev->dev, "register vpu ipi id %d with invalid arguments\n",
  id);
 return -EINVAL;
}
