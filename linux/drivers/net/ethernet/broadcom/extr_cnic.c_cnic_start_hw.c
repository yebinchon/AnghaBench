
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int gen; } ;
struct cnic_local {int (* alloc_resc ) (struct cnic_dev*) ;int (* start_hw ) (struct cnic_dev*) ;int (* free_resc ) (struct cnic_dev*) ;int (* stop_hw ) (struct cnic_dev*) ;int (* enable_int ) (struct cnic_dev*) ;int status_blk_num; TYPE_1__ status_blk; int func; struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int drv_state; TYPE_2__* irq_arr; int io_base; } ;
struct cnic_dev {TYPE_3__* pcidev; int flags; int netdev; int regview; struct cnic_local* cnic_priv; } ;
struct TYPE_7__ {int devfn; } ;
struct TYPE_6__ {int status_blk_num; int status_blk; } ;


 int CNIC_DRV_STATE_HANDLES_IRQ ;
 int CNIC_F_CNIC_UP ;
 int EALREADY ;
 int PCI_FUNC (int ) ;
 int cnic_cm_open (struct cnic_dev*) ;
 int netdev_err (int ,char*) ;
 int pci_dev_get (TYPE_3__*) ;
 int pci_dev_put (TYPE_3__*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct cnic_dev*) ;
 int stub2 (struct cnic_dev*) ;
 int stub3 (struct cnic_dev*) ;
 int stub4 (struct cnic_dev*) ;
 int stub5 (struct cnic_dev*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int cnic_start_hw(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_eth_dev *ethdev = cp->ethdev;
 int err;

 if (test_bit(CNIC_F_CNIC_UP, &dev->flags))
  return -EALREADY;

 dev->regview = ethdev->io_base;
 pci_dev_get(dev->pcidev);
 cp->func = PCI_FUNC(dev->pcidev->devfn);
 cp->status_blk.gen = ethdev->irq_arr[0].status_blk;
 cp->status_blk_num = ethdev->irq_arr[0].status_blk_num;

 err = cp->alloc_resc(dev);
 if (err) {
  netdev_err(dev->netdev, "allocate resource failure\n");
  goto err1;
 }

 err = cp->start_hw(dev);
 if (err)
  goto err1;

 err = cnic_cm_open(dev);
 if (err)
  goto err1;

 set_bit(CNIC_F_CNIC_UP, &dev->flags);

 cp->enable_int(dev);

 return 0;

err1:
 if (ethdev->drv_state & CNIC_DRV_STATE_HANDLES_IRQ)
  cp->stop_hw(dev);
 else
  cp->free_resc(dev);
 pci_dev_put(dev->pcidev);
 return err;
}
