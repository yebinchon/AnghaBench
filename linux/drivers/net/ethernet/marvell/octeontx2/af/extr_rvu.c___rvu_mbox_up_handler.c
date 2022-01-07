
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu_work {struct rvu* rvu; } ;
struct otx2_mbox {int rx_start; struct otx2_mbox_dev* dev; } ;
struct mbox_wq_info {struct otx2_mbox mbox_up; struct rvu_work* mbox_wrk_up; } ;
struct rvu {int dev; struct mbox_wq_info afvf_wq_info; struct mbox_wq_info afpf_wq_info; } ;
struct otx2_mbox_dev {int msgs_acked; struct mbox_msghdr* mbase; } ;
struct mbox_msghdr {int num_msgs; int id; scalar_t__ sig; scalar_t__ rc; int next_msgoff; } ;
struct mbox_hdr {int num_msgs; int id; scalar_t__ sig; scalar_t__ rc; int next_msgoff; } ;


 int ALIGN (int,int ) ;
 int MBOX_MSG_ALIGN ;

 int MBOX_MSG_MAX ;
 scalar_t__ OTX2_MBOX_RSP_SIG ;


 int dev_err (int ,char*,scalar_t__,...) ;
 int dev_warn (int ,char*) ;
 int otx2_mbox_reset (struct otx2_mbox*,int) ;

__attribute__((used)) static void __rvu_mbox_up_handler(struct rvu_work *mwork, int type)
{
 struct rvu *rvu = mwork->rvu;
 struct otx2_mbox_dev *mdev;
 struct mbox_hdr *rsp_hdr;
 struct mbox_msghdr *msg;
 struct mbox_wq_info *mw;
 struct otx2_mbox *mbox;
 int offset, id, devid;

 switch (type) {
 case 129:
  mw = &rvu->afpf_wq_info;
  break;
 case 128:
  mw = &rvu->afvf_wq_info;
  break;
 default:
  return;
 }

 devid = mwork - mw->mbox_wrk_up;
 mbox = &mw->mbox_up;
 mdev = &mbox->dev[devid];

 rsp_hdr = mdev->mbase + mbox->rx_start;
 if (rsp_hdr->num_msgs == 0) {
  dev_warn(rvu->dev, "mbox up handler: num_msgs = 0\n");
  return;
 }

 offset = mbox->rx_start + ALIGN(sizeof(*rsp_hdr), MBOX_MSG_ALIGN);

 for (id = 0; id < rsp_hdr->num_msgs; id++) {
  msg = mdev->mbase + offset;

  if (msg->id >= MBOX_MSG_MAX) {
   dev_err(rvu->dev,
    "Mbox msg with unknown ID 0x%x\n", msg->id);
   goto end;
  }

  if (msg->sig != OTX2_MBOX_RSP_SIG) {
   dev_err(rvu->dev,
    "Mbox msg with wrong signature %x, ID 0x%x\n",
    msg->sig, msg->id);
   goto end;
  }

  switch (msg->id) {
  case 130:
   break;
  default:
   if (msg->rc)
    dev_err(rvu->dev,
     "Mbox msg response has err %d, ID 0x%x\n",
     msg->rc, msg->id);
   break;
  }
end:
  offset = mbox->rx_start + msg->next_msgoff;
  mdev->msgs_acked++;
 }

 otx2_mbox_reset(mbox, devid);
}
