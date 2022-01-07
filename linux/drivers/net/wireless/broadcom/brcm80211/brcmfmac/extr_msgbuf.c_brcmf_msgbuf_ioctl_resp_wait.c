
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_msgbuf {int ctl_completed; int ioctl_resp_wait; } ;


 int MSGBUF_IOCTL_RESP_TIMEOUT ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static int brcmf_msgbuf_ioctl_resp_wait(struct brcmf_msgbuf *msgbuf)
{
 return wait_event_timeout(msgbuf->ioctl_resp_wait,
      msgbuf->ctl_completed,
      MSGBUF_IOCTL_RESP_TIMEOUT);
}
