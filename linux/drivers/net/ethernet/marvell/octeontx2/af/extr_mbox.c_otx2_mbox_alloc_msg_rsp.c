
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otx2_mbox_dev {scalar_t__ msg_size; scalar_t__ rsp_size; int mbox_lock; struct mbox_msghdr* mbase; scalar_t__ num_msgs; } ;
struct otx2_mbox {scalar_t__ tx_size; scalar_t__ rx_size; int tx_start; struct otx2_mbox_dev* dev; } ;
struct mbox_msghdr {scalar_t__ next_msgoff; int ver; } ;


 int ALIGN (int,int ) ;
 int MBOX_MSG_ALIGN ;
 int OTX2_MBOX_VERSION ;
 int memset (struct mbox_msghdr*,int ,int) ;
 scalar_t__ msgs_offset ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct mbox_msghdr *otx2_mbox_alloc_msg_rsp(struct otx2_mbox *mbox, int devid,
         int size, int size_rsp)
{
 struct otx2_mbox_dev *mdev = &mbox->dev[devid];
 struct mbox_msghdr *msghdr = ((void*)0);

 spin_lock(&mdev->mbox_lock);
 size = ALIGN(size, MBOX_MSG_ALIGN);
 size_rsp = ALIGN(size_rsp, MBOX_MSG_ALIGN);

 if ((mdev->msg_size + size) > mbox->tx_size - msgs_offset)
  goto exit;
 if ((mdev->rsp_size + size_rsp) > mbox->rx_size - msgs_offset)
  goto exit;

 if (mdev->msg_size == 0)
  mdev->num_msgs = 0;
 mdev->num_msgs++;

 msghdr = mdev->mbase + mbox->tx_start + msgs_offset + mdev->msg_size;


 memset(msghdr, 0, sizeof(*msghdr) + size);

 msghdr->ver = OTX2_MBOX_VERSION;
 mdev->msg_size += size;
 mdev->rsp_size += size_rsp;
 msghdr->next_msgoff = mdev->msg_size + msgs_offset;
exit:
 spin_unlock(&mdev->mbox_lock);

 return msghdr;
}
