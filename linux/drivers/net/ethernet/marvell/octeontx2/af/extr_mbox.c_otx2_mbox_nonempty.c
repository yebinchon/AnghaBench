
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otx2_mbox_dev {scalar_t__ num_msgs; int mbox_lock; } ;
struct otx2_mbox {struct otx2_mbox_dev* dev; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool otx2_mbox_nonempty(struct otx2_mbox *mbox, int devid)
{
 struct otx2_mbox_dev *mdev = &mbox->dev[devid];
 bool ret;

 spin_lock(&mdev->mbox_lock);
 ret = mdev->num_msgs != 0;
 spin_unlock(&mdev->mbox_lock);

 return ret;
}
