
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct ingenic_nfc {unsigned int num_banks; scalar_t__ ecc; int chips; int controller; struct device* dev; int soc_info; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int cs ;
 int dev_err (struct device*,char*) ;
 int device_get_match_data (struct device*) ;
 struct ingenic_nfc* devm_kzalloc (struct device*,int ,int ) ;
 int ingenic_ecc_release (scalar_t__) ;
 int ingenic_nand_init_chips (struct ingenic_nfc*,struct platform_device*) ;
 unsigned int jz4780_nemc_num_banks (struct device*) ;
 int nand_controller_init (int *) ;
 scalar_t__ of_ingenic_ecc_get (int ) ;
 int platform_set_drvdata (struct platform_device*,struct ingenic_nfc*) ;
 int struct_size (struct ingenic_nfc*,int ,unsigned int) ;

__attribute__((used)) static int ingenic_nand_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 unsigned int num_banks;
 struct ingenic_nfc *nfc;
 int ret;

 num_banks = jz4780_nemc_num_banks(dev);
 if (num_banks == 0) {
  dev_err(dev, "no banks found\n");
  return -ENODEV;
 }

 nfc = devm_kzalloc(dev, struct_size(nfc, cs, num_banks), GFP_KERNEL);
 if (!nfc)
  return -ENOMEM;

 nfc->soc_info = device_get_match_data(dev);
 if (!nfc->soc_info)
  return -EINVAL;





 nfc->ecc = of_ingenic_ecc_get(dev->of_node);
 if (IS_ERR(nfc->ecc))
  return PTR_ERR(nfc->ecc);

 nfc->dev = dev;
 nfc->num_banks = num_banks;

 nand_controller_init(&nfc->controller);
 INIT_LIST_HEAD(&nfc->chips);

 ret = ingenic_nand_init_chips(nfc, pdev);
 if (ret) {
  if (nfc->ecc)
   ingenic_ecc_release(nfc->ecc);
  return ret;
 }

 platform_set_drvdata(pdev, nfc);
 return 0;
}
