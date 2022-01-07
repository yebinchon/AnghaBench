
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct mei_txe_hw {int wait_aliveness_resp; } ;
struct mei_device {int dummy; } ;


 int GFP_KERNEL ;
 struct mei_device* devm_kzalloc (int *,int,int ) ;
 int init_waitqueue_head (int *) ;
 int mei_device_init (struct mei_device*,int *,int *) ;
 int mei_txe_hw_ops ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;

struct mei_device *mei_txe_dev_init(struct pci_dev *pdev)
{
 struct mei_device *dev;
 struct mei_txe_hw *hw;

 dev = devm_kzalloc(&pdev->dev, sizeof(struct mei_device) +
      sizeof(struct mei_txe_hw), GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 mei_device_init(dev, &pdev->dev, &mei_txe_hw_ops);

 hw = to_txe_hw(dev);

 init_waitqueue_head(&hw->wait_aliveness_resp);

 return dev;
}
