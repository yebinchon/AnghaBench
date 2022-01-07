
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int request_id; } ;
struct TYPE_4__ {int status; } ;
struct msgbuf_ioctl_resp_hdr {TYPE_1__ msg; int resp_len; TYPE_2__ compl_hdr; } ;
struct brcmf_msgbuf {scalar_t__ cur_ioctlrespbuf; int ioctl_resp_pktid; scalar_t__ ioctl_resp_ret_len; scalar_t__ ioctl_resp_status; } ;
typedef scalar_t__ s16 ;


 int brcmf_msgbuf_ioctl_resp_wake (struct brcmf_msgbuf*) ;
 int brcmf_msgbuf_rxbuf_ioctlresp_post (struct brcmf_msgbuf*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void
brcmf_msgbuf_process_ioctl_complete(struct brcmf_msgbuf *msgbuf, void *buf)
{
 struct msgbuf_ioctl_resp_hdr *ioctl_resp;

 ioctl_resp = (struct msgbuf_ioctl_resp_hdr *)buf;

 msgbuf->ioctl_resp_status =
   (s16)le16_to_cpu(ioctl_resp->compl_hdr.status);
 msgbuf->ioctl_resp_ret_len = le16_to_cpu(ioctl_resp->resp_len);
 msgbuf->ioctl_resp_pktid = le32_to_cpu(ioctl_resp->msg.request_id);

 brcmf_msgbuf_ioctl_resp_wake(msgbuf);

 if (msgbuf->cur_ioctlrespbuf)
  msgbuf->cur_ioctlrespbuf--;
 brcmf_msgbuf_rxbuf_ioctlresp_post(msgbuf);
}
