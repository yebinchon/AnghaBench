
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_7__ {struct TYPE_7__* parent; int coherent_dma_mask; int dma_mask; int of_node; } ;
struct platform_device {char* name; int id; int num_resources; TYPE_1__ dev; struct resource* resource; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_info (TYPE_1__*,char*) ;
 int dev_warn (TYPE_1__*,char*) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct platform_device* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct device_node* of_graph_get_next_endpoint (int ,struct device_node*) ;
 int platform_device_register (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_get (TYPE_1__*) ;
 int spin_lock_init (int *) ;
 int vpif_base ;
 int vpif_lock ;

__attribute__((used)) static int vpif_probe(struct platform_device *pdev)
{
 static struct resource *res, *res_irq;
 struct platform_device *pdev_capture, *pdev_display;
 struct device_node *endpoint = ((void*)0);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 vpif_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(vpif_base))
  return PTR_ERR(vpif_base);

 pm_runtime_enable(&pdev->dev);
 pm_runtime_get(&pdev->dev);

 spin_lock_init(&vpif_lock);
 dev_info(&pdev->dev, "vpif probe success\n");







 endpoint = of_graph_get_next_endpoint(pdev->dev.of_node,
           endpoint);
 if (!endpoint)
  return 0;





 res_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!res_irq) {
  dev_warn(&pdev->dev, "Missing IRQ resource.\n");
  return -EINVAL;
 }

 pdev_capture = devm_kzalloc(&pdev->dev, sizeof(*pdev_capture),
        GFP_KERNEL);
 if (pdev_capture) {
  pdev_capture->name = "vpif_capture";
  pdev_capture->id = -1;
  pdev_capture->resource = res_irq;
  pdev_capture->num_resources = 1;
  pdev_capture->dev.dma_mask = pdev->dev.dma_mask;
  pdev_capture->dev.coherent_dma_mask = pdev->dev.coherent_dma_mask;
  pdev_capture->dev.parent = &pdev->dev;
  platform_device_register(pdev_capture);
 } else {
  dev_warn(&pdev->dev, "Unable to allocate memory for pdev_capture.\n");
 }

 pdev_display = devm_kzalloc(&pdev->dev, sizeof(*pdev_display),
        GFP_KERNEL);
 if (pdev_display) {
  pdev_display->name = "vpif_display";
  pdev_display->id = -1;
  pdev_display->resource = res_irq;
  pdev_display->num_resources = 1;
  pdev_display->dev.dma_mask = pdev->dev.dma_mask;
  pdev_display->dev.coherent_dma_mask = pdev->dev.coherent_dma_mask;
  pdev_display->dev.parent = &pdev->dev;
  platform_device_register(pdev_display);
 } else {
  dev_warn(&pdev->dev, "Unable to allocate memory for pdev_display.\n");
 }

 return 0;
}
