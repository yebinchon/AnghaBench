
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_dev {int dummy; } ;
struct ionic {int dev_cmd_lock; struct ionic_dev idev; } ;


 int DEVCMD_TIMEOUT ;
 int ionic_dev_cmd_reset (struct ionic_dev*) ;
 int ionic_dev_cmd_wait (struct ionic*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ionic_reset(struct ionic *ionic)
{
 struct ionic_dev *idev = &ionic->idev;
 int err;

 mutex_lock(&ionic->dev_cmd_lock);
 ionic_dev_cmd_reset(idev);
 err = ionic_dev_cmd_wait(ionic, DEVCMD_TIMEOUT);
 mutex_unlock(&ionic->dev_cmd_lock);

 return err;
}
