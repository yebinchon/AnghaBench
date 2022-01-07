
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct intel_quark_mfd {int * dev; } ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (int *,struct intel_quark_mfd*) ;
 struct intel_quark_mfd* devm_kzalloc (int *,int,int ) ;
 int intel_quark_gpio_setup (struct pci_dev*,int *) ;
 int intel_quark_i2c_setup (struct pci_dev*,int *) ;
 int * intel_quark_mfd_cells ;
 int intel_quark_register_i2c_clk (int *) ;
 int intel_quark_unregister_i2c_clk (int *) ;
 int mfd_add_devices (int *,int ,int *,int ,int *,int ,int *) ;
 int pcim_enable_device (struct pci_dev*) ;

__attribute__((used)) static int intel_quark_mfd_probe(struct pci_dev *pdev,
     const struct pci_device_id *id)
{
 struct intel_quark_mfd *quark_mfd;
 int ret;

 ret = pcim_enable_device(pdev);
 if (ret)
  return ret;

 quark_mfd = devm_kzalloc(&pdev->dev, sizeof(*quark_mfd), GFP_KERNEL);
 if (!quark_mfd)
  return -ENOMEM;

 quark_mfd->dev = &pdev->dev;
 dev_set_drvdata(&pdev->dev, quark_mfd);

 ret = intel_quark_register_i2c_clk(&pdev->dev);
 if (ret)
  return ret;

 ret = intel_quark_i2c_setup(pdev, &intel_quark_mfd_cells[1]);
 if (ret)
  goto err_unregister_i2c_clk;

 ret = intel_quark_gpio_setup(pdev, &intel_quark_mfd_cells[0]);
 if (ret)
  goto err_unregister_i2c_clk;

 ret = mfd_add_devices(&pdev->dev, 0, intel_quark_mfd_cells,
         ARRAY_SIZE(intel_quark_mfd_cells), ((void*)0), 0,
         ((void*)0));
 if (ret)
  goto err_unregister_i2c_clk;

 return 0;

err_unregister_i2c_clk:
 intel_quark_unregister_i2c_clk(&pdev->dev);
 return ret;
}
