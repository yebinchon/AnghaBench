
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct resource {int start; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct fsl_upm_nand {int mchip_count; int* rnb_gpio; int chip_delay; int wait_flags; int last_ctrl; TYPE_1__* dev; int io_base; int * mchip_offsets; int upm_cmd_offset; int upm_addr_offset; int upm; } ;
typedef int __be32 ;


 int EINVAL ;
 int ENOMEM ;
 int FSL_UPM_WAIT_RUN_PATTERN ;
 int FSL_UPM_WAIT_WRITE_BYTE ;
 int GFP_KERNEL ;
 int NAND_CLE ;
 int NAND_MAX_CHIPS ;
 int be32_to_cpu (int const) ;
 void* be32_to_cpup (int const*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_name (TYPE_1__*) ;
 int dev_set_drvdata (TYPE_1__*,struct fsl_upm_nand*) ;
 int devm_ioremap_nocache (TYPE_1__*,int ,int ) ;
 int fsl_upm_find (int ,int *) ;
 int fun_chip_init (struct fsl_upm_nand*,int ,struct resource*) ;
 int gpio_direction_input (int) ;
 int gpio_free (int) ;
 int gpio_request (int,int ) ;
 int kfree (struct fsl_upm_nand*) ;
 struct fsl_upm_nand* kzalloc (int,int ) ;
 int of_address_to_resource (int ,int ,struct resource*) ;
 int of_get_gpio (int ,int) ;
 int * of_get_property (int ,char*,int*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int fun_probe(struct platform_device *ofdev)
{
 struct fsl_upm_nand *fun;
 struct resource io_res;
 const __be32 *prop;
 int rnb_gpio;
 int ret;
 int size;
 int i;

 fun = kzalloc(sizeof(*fun), GFP_KERNEL);
 if (!fun)
  return -ENOMEM;

 ret = of_address_to_resource(ofdev->dev.of_node, 0, &io_res);
 if (ret) {
  dev_err(&ofdev->dev, "can't get IO base\n");
  goto err1;
 }

 ret = fsl_upm_find(io_res.start, &fun->upm);
 if (ret) {
  dev_err(&ofdev->dev, "can't find UPM\n");
  goto err1;
 }

 prop = of_get_property(ofdev->dev.of_node, "fsl,upm-addr-offset",
          &size);
 if (!prop || size != sizeof(uint32_t)) {
  dev_err(&ofdev->dev, "can't get UPM address offset\n");
  ret = -EINVAL;
  goto err1;
 }
 fun->upm_addr_offset = *prop;

 prop = of_get_property(ofdev->dev.of_node, "fsl,upm-cmd-offset", &size);
 if (!prop || size != sizeof(uint32_t)) {
  dev_err(&ofdev->dev, "can't get UPM command offset\n");
  ret = -EINVAL;
  goto err1;
 }
 fun->upm_cmd_offset = *prop;

 prop = of_get_property(ofdev->dev.of_node,
          "fsl,upm-addr-line-cs-offsets", &size);
 if (prop && (size / sizeof(uint32_t)) > 0) {
  fun->mchip_count = size / sizeof(uint32_t);
  if (fun->mchip_count >= NAND_MAX_CHIPS) {
   dev_err(&ofdev->dev, "too much multiple chips\n");
   goto err1;
  }
  for (i = 0; i < fun->mchip_count; i++)
   fun->mchip_offsets[i] = be32_to_cpu(prop[i]);
 } else {
  fun->mchip_count = 1;
 }

 for (i = 0; i < fun->mchip_count; i++) {
  fun->rnb_gpio[i] = -1;
  rnb_gpio = of_get_gpio(ofdev->dev.of_node, i);
  if (rnb_gpio >= 0) {
   ret = gpio_request(rnb_gpio, dev_name(&ofdev->dev));
   if (ret) {
    dev_err(&ofdev->dev,
     "can't request RNB gpio #%d\n", i);
    goto err2;
   }
   gpio_direction_input(rnb_gpio);
   fun->rnb_gpio[i] = rnb_gpio;
  } else if (rnb_gpio == -EINVAL) {
   dev_err(&ofdev->dev, "RNB gpio #%d is invalid\n", i);
   goto err2;
  }
 }

 prop = of_get_property(ofdev->dev.of_node, "chip-delay", ((void*)0));
 if (prop)
  fun->chip_delay = be32_to_cpup(prop);
 else
  fun->chip_delay = 50;

 prop = of_get_property(ofdev->dev.of_node, "fsl,upm-wait-flags", &size);
 if (prop && size == sizeof(uint32_t))
  fun->wait_flags = be32_to_cpup(prop);
 else
  fun->wait_flags = FSL_UPM_WAIT_RUN_PATTERN |
      FSL_UPM_WAIT_WRITE_BYTE;

 fun->io_base = devm_ioremap_nocache(&ofdev->dev, io_res.start,
         resource_size(&io_res));
 if (!fun->io_base) {
  ret = -ENOMEM;
  goto err2;
 }

 fun->dev = &ofdev->dev;
 fun->last_ctrl = NAND_CLE;

 ret = fun_chip_init(fun, ofdev->dev.of_node, &io_res);
 if (ret)
  goto err2;

 dev_set_drvdata(&ofdev->dev, fun);

 return 0;
err2:
 for (i = 0; i < fun->mchip_count; i++) {
  if (fun->rnb_gpio[i] < 0)
   break;
  gpio_free(fun->rnb_gpio[i]);
 }
err1:
 kfree(fun);

 return ret;
}
