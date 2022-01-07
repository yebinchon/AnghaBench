
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct otx2_mbox_dev {struct mbox_hdr* mbase; } ;
struct otx2_mbox {int rx_start; struct otx2_mbox_dev* dev; } ;
struct mbox_wq_info {TYPE_2__* mbox_wrk_up; int mbox_wq; struct otx2_mbox mbox_up; TYPE_1__* mbox_wrk; struct otx2_mbox mbox; } ;
struct mbox_hdr {scalar_t__ num_msgs; } ;
struct TYPE_4__ {int work; } ;
struct TYPE_3__ {int work; } ;


 int BIT_ULL (int) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void rvu_queue_work(struct mbox_wq_info *mw, int first,
      int mdevs, u64 intr)
{
 struct otx2_mbox_dev *mdev;
 struct otx2_mbox *mbox;
 struct mbox_hdr *hdr;
 int i;

 for (i = first; i < mdevs; i++) {

  if (!(intr & BIT_ULL(i - first)))
   continue;

  mbox = &mw->mbox;
  mdev = &mbox->dev[i];
  hdr = mdev->mbase + mbox->rx_start;
  if (hdr->num_msgs)
   queue_work(mw->mbox_wq, &mw->mbox_wrk[i].work);

  mbox = &mw->mbox_up;
  mdev = &mbox->dev[i];
  hdr = mdev->mbase + mbox->rx_start;
  if (hdr->num_msgs)
   queue_work(mw->mbox_wq, &mw->mbox_wrk_up[i].work);
 }
}
