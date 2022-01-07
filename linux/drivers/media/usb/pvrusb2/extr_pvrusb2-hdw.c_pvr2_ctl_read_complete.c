
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {struct pvr2_hdw* context; } ;
struct pvr2_hdw {int ctl_done; scalar_t__ ctl_write_pend_flag; scalar_t__ ctl_read_pend_flag; } ;


 int complete (int *) ;

__attribute__((used)) static void pvr2_ctl_read_complete(struct urb *urb)
{
 struct pvr2_hdw *hdw = urb->context;
 hdw->ctl_read_pend_flag = 0;
 if (hdw->ctl_write_pend_flag) return;
 complete(&hdw->ctl_done);
}
