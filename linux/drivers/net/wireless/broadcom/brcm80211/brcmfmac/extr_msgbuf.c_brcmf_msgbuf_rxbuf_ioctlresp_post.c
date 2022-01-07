
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct brcmf_msgbuf {scalar_t__ cur_ioctlrespbuf; scalar_t__ max_ioctlrespbuf; } ;


 scalar_t__ brcmf_msgbuf_rxbuf_ctrl_post (struct brcmf_msgbuf*,int,scalar_t__) ;

__attribute__((used)) static void brcmf_msgbuf_rxbuf_ioctlresp_post(struct brcmf_msgbuf *msgbuf)
{
 u32 count;

 count = msgbuf->max_ioctlrespbuf - msgbuf->cur_ioctlrespbuf;
 count = brcmf_msgbuf_rxbuf_ctrl_post(msgbuf, 0, count);
 msgbuf->cur_ioctlrespbuf += count;
}
