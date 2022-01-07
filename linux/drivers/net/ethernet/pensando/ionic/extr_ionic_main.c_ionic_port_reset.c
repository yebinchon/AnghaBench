
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_dev {scalar_t__ port_info_pa; int * port_info; int port_info_sz; } ;
struct ionic {int dev; int dev_cmd_lock; struct ionic_dev idev; } ;


 int DEVCMD_TIMEOUT ;
 int dev_err (int ,char*) ;
 int dma_free_coherent (int ,int ,int *,scalar_t__) ;
 int ionic_dev_cmd_port_reset (struct ionic_dev*) ;
 int ionic_dev_cmd_wait (struct ionic*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ionic_port_reset(struct ionic *ionic)
{
 struct ionic_dev *idev = &ionic->idev;
 int err;

 if (!idev->port_info)
  return 0;

 mutex_lock(&ionic->dev_cmd_lock);
 ionic_dev_cmd_port_reset(idev);
 err = ionic_dev_cmd_wait(ionic, DEVCMD_TIMEOUT);
 mutex_unlock(&ionic->dev_cmd_lock);

 dma_free_coherent(ionic->dev, idev->port_info_sz,
     idev->port_info, idev->port_info_pa);

 idev->port_info = ((void*)0);
 idev->port_info_pa = 0;

 if (err)
  dev_err(ionic->dev, "Failed to reset port\n");

 return err;
}
