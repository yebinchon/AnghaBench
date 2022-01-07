
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct sun4i_gpadc_dev {TYPE_1__* dev; int regmap_irqc; int regmap; int base; } ;
struct resource {int dummy; } ;
struct TYPE_8__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct mfd_cell {int dummy; } ;





 unsigned int ARRAY_SIZE (struct mfd_cell*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SUN4I_GPADC_INT_FIFOC ;
 int dev_err (TYPE_1__*,char*,int) ;
 int dev_set_drvdata (TYPE_1__*,struct sun4i_gpadc_dev*) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct sun4i_gpadc_dev* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_mfd_add_devices (TYPE_1__*,int ,struct mfd_cell const*,unsigned int,int *,int ,int *) ;
 int devm_regmap_add_irq_chip (TYPE_1__*,int ,unsigned int,int ,int ,int *,int *) ;
 int devm_regmap_init_mmio (TYPE_1__*,int ,int *) ;
 struct of_device_id* of_match_node (int ,int ) ;
 unsigned int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int regmap_write (int ,int ,int ) ;
 struct mfd_cell* sun4i_gpadc_cells ;
 int sun4i_gpadc_of_match ;
 int sun4i_gpadc_regmap_config ;
 int sun4i_gpadc_regmap_irq_chip ;
 struct mfd_cell* sun5i_gpadc_cells ;
 struct mfd_cell* sun6i_gpadc_cells ;

__attribute__((used)) static int sun4i_gpadc_probe(struct platform_device *pdev)
{
 struct sun4i_gpadc_dev *dev;
 struct resource *mem;
 const struct of_device_id *of_id;
 const struct mfd_cell *cells;
 unsigned int irq, size;
 int ret;

 of_id = of_match_node(sun4i_gpadc_of_match, pdev->dev.of_node);
 if (!of_id)
  return -EINVAL;

 switch ((long)of_id->data) {
 case 130:
  cells = sun4i_gpadc_cells;
  size = ARRAY_SIZE(sun4i_gpadc_cells);
  break;
 case 129:
  cells = sun5i_gpadc_cells;
  size = ARRAY_SIZE(sun5i_gpadc_cells);
  break;
 case 128:
  cells = sun6i_gpadc_cells;
  size = ARRAY_SIZE(sun6i_gpadc_cells);
  break;
 default:
  return -EINVAL;
 }

 dev = devm_kzalloc(&pdev->dev, sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 dev->base = devm_ioremap_resource(&pdev->dev, mem);
 if (IS_ERR(dev->base))
  return PTR_ERR(dev->base);

 dev->dev = &pdev->dev;
 dev_set_drvdata(dev->dev, dev);

 dev->regmap = devm_regmap_init_mmio(dev->dev, dev->base,
         &sun4i_gpadc_regmap_config);
 if (IS_ERR(dev->regmap)) {
  ret = PTR_ERR(dev->regmap);
  dev_err(&pdev->dev, "failed to init regmap: %d\n", ret);
  return ret;
 }


 regmap_write(dev->regmap, SUN4I_GPADC_INT_FIFOC, 0);

 irq = platform_get_irq(pdev, 0);
 ret = devm_regmap_add_irq_chip(&pdev->dev, dev->regmap, irq,
           IRQF_ONESHOT, 0,
           &sun4i_gpadc_regmap_irq_chip,
           &dev->regmap_irqc);
 if (ret) {
  dev_err(&pdev->dev, "failed to add irq chip: %d\n", ret);
  return ret;
 }

 ret = devm_mfd_add_devices(dev->dev, 0, cells, size, ((void*)0), 0, ((void*)0));
 if (ret) {
  dev_err(&pdev->dev, "failed to add MFD devices: %d\n", ret);
  return ret;
 }

 return 0;
}
