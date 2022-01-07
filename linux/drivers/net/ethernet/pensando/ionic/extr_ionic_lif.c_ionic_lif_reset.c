
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ionic_lif {TYPE_1__* ionic; int index; } ;
struct ionic_dev {int dummy; } ;
struct TYPE_2__ {int dev_cmd_lock; struct ionic_dev idev; } ;


 int DEVCMD_TIMEOUT ;
 int ionic_dev_cmd_lif_reset (struct ionic_dev*,int ) ;
 int ionic_dev_cmd_wait (TYPE_1__*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ionic_lif_reset(struct ionic_lif *lif)
{
 struct ionic_dev *idev = &lif->ionic->idev;

 mutex_lock(&lif->ionic->dev_cmd_lock);
 ionic_dev_cmd_lif_reset(idev, lif->index);
 ionic_dev_cmd_wait(lif->ionic, DEVCMD_TIMEOUT);
 mutex_unlock(&lif->ionic->dev_cmd_lock);
}
