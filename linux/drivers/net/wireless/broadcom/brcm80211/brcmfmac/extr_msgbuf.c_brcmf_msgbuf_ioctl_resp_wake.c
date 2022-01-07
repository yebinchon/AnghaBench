
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_msgbuf {int ctl_completed; int ioctl_resp_wait; } ;


 int wake_up (int *) ;

__attribute__((used)) static void brcmf_msgbuf_ioctl_resp_wake(struct brcmf_msgbuf *msgbuf)
{
 msgbuf->ctl_completed = 1;
 wake_up(&msgbuf->ioctl_resp_wait);
}
