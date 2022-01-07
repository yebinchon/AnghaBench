
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ionic_identity {int port; } ;
struct ionic_dev {TYPE_1__* dev_cmd_regs; } ;
struct ionic {int dev_cmd_lock; struct ionic_dev idev; struct ionic_identity ident; } ;
struct TYPE_2__ {int data; } ;


 int DEVCMD_TIMEOUT ;
 int ionic_dev_cmd_port_identify (struct ionic_dev*) ;
 int ionic_dev_cmd_wait (struct ionic*,int ) ;
 int memcpy_fromio (int *,int *,size_t) ;
 size_t min (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ionic_port_identify(struct ionic *ionic)
{
 struct ionic_identity *ident = &ionic->ident;
 struct ionic_dev *idev = &ionic->idev;
 size_t sz;
 int err;

 mutex_lock(&ionic->dev_cmd_lock);

 ionic_dev_cmd_port_identify(idev);
 err = ionic_dev_cmd_wait(ionic, DEVCMD_TIMEOUT);
 if (!err) {
  sz = min(sizeof(ident->port), sizeof(idev->dev_cmd_regs->data));
  memcpy_fromio(&ident->port, &idev->dev_cmd_regs->data, sz);
 }

 mutex_unlock(&ionic->dev_cmd_lock);

 return err;
}
