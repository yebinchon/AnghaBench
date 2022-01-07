
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fh {int navailable; } ;



int v4l2_event_pending(struct v4l2_fh *fh)
{
 return fh->navailable;
}
