
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otx2_mbox_dev {int mbox_lock; scalar_t__ rsp_size; scalar_t__ msg_size; struct mbox_hdr* mbase; } ;
struct otx2_mbox {int tx_start; int rx_start; struct otx2_mbox_dev* dev; } ;
struct mbox_hdr {scalar_t__ num_msgs; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void otx2_mbox_reset(struct otx2_mbox *mbox, int devid)
{
 struct otx2_mbox_dev *mdev = &mbox->dev[devid];
 struct mbox_hdr *tx_hdr, *rx_hdr;

 tx_hdr = mdev->mbase + mbox->tx_start;
 rx_hdr = mdev->mbase + mbox->rx_start;

 spin_lock(&mdev->mbox_lock);
 mdev->msg_size = 0;
 mdev->rsp_size = 0;
 tx_hdr->num_msgs = 0;
 rx_hdr->num_msgs = 0;
 spin_unlock(&mdev->mbox_lock);
}
