
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_v4l2_fh {int wait_data; } ;


 int wake_up (int *) ;

__attribute__((used)) static void pvr2_v4l2_notify(struct pvr2_v4l2_fh *fhp)
{
 wake_up(&fhp->wait_data);
}
