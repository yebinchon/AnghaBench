
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int config; } ;
struct ionic_identity {TYPE_2__ port; } ;
struct ionic_dev {scalar_t__ port_info_pa; int * port_info; int port_info_sz; TYPE_1__* dev_cmd_regs; } ;
struct ionic {int dev; int dev_cmd_lock; struct ionic_dev idev; struct ionic_identity ident; } ;
struct TYPE_3__ {int data; } ;


 int ALIGN (int,int ) ;
 int DEVCMD_TIMEOUT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IONIC_PORT_ADMIN_STATE_UP ;
 int PAGE_SIZE ;
 int dev_err (int ,char*) ;
 int * dma_alloc_coherent (int ,int ,scalar_t__*,int ) ;
 int dma_free_coherent (int ,int ,int *,scalar_t__) ;
 int ionic_dev_cmd_port_init (struct ionic_dev*) ;
 int ionic_dev_cmd_port_state (struct ionic_dev*,int ) ;
 int ionic_dev_cmd_wait (struct ionic*,int ) ;
 int memcpy_toio (int *,int *,size_t) ;
 size_t min (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ionic_port_init(struct ionic *ionic)
{
 struct ionic_identity *ident = &ionic->ident;
 struct ionic_dev *idev = &ionic->idev;
 size_t sz;
 int err;

 if (idev->port_info)
  return 0;

 idev->port_info_sz = ALIGN(sizeof(*idev->port_info), PAGE_SIZE);
 idev->port_info = dma_alloc_coherent(ionic->dev, idev->port_info_sz,
          &idev->port_info_pa,
          GFP_KERNEL);
 if (!idev->port_info) {
  dev_err(ionic->dev, "Failed to allocate port info, aborting\n");
  return -ENOMEM;
 }

 sz = min(sizeof(ident->port.config), sizeof(idev->dev_cmd_regs->data));

 mutex_lock(&ionic->dev_cmd_lock);

 memcpy_toio(&idev->dev_cmd_regs->data, &ident->port.config, sz);
 ionic_dev_cmd_port_init(idev);
 err = ionic_dev_cmd_wait(ionic, DEVCMD_TIMEOUT);

 ionic_dev_cmd_port_state(&ionic->idev, IONIC_PORT_ADMIN_STATE_UP);
 (void)ionic_dev_cmd_wait(ionic, DEVCMD_TIMEOUT);

 mutex_unlock(&ionic->dev_cmd_lock);
 if (err) {
  dev_err(ionic->dev, "Failed to init port\n");
  dma_free_coherent(ionic->dev, idev->port_info_sz,
      idev->port_info, idev->port_info_pa);
  idev->port_info = ((void*)0);
  idev->port_info_pa = 0;
 }

 return err;
}
