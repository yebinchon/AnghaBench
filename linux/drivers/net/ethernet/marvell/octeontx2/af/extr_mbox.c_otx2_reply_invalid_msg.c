
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u16 ;
struct otx2_mbox {int dummy; } ;
struct TYPE_2__ {void* pcifunc; int rc; int sig; void* id; } ;
struct msg_rsp {TYPE_1__ hdr; } ;


 int ENOMEM ;
 int MBOX_MSG_INVALID ;
 int OTX2_MBOX_RSP_SIG ;
 scalar_t__ otx2_mbox_alloc_msg (struct otx2_mbox*,int,int) ;

int
otx2_reply_invalid_msg(struct otx2_mbox *mbox, int devid, u16 pcifunc, u16 id)
{
 struct msg_rsp *rsp;

 rsp = (struct msg_rsp *)
        otx2_mbox_alloc_msg(mbox, devid, sizeof(*rsp));
 if (!rsp)
  return -ENOMEM;
 rsp->hdr.id = id;
 rsp->hdr.sig = OTX2_MBOX_RSP_SIG;
 rsp->hdr.rc = MBOX_MSG_INVALID;
 rsp->hdr.pcifunc = pcifunc;
 return 0;
}
