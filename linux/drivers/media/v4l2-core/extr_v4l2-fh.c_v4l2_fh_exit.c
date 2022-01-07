
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fh {int * vdev; int subscribe_lock; } ;


 int mutex_destroy (int *) ;
 int v4l2_event_unsubscribe_all (struct v4l2_fh*) ;
 int v4l_disable_media_source (int *) ;

void v4l2_fh_exit(struct v4l2_fh *fh)
{
 if (fh->vdev == ((void*)0))
  return;
 v4l_disable_media_source(fh->vdev);
 v4l2_event_unsubscribe_all(fh);
 mutex_destroy(&fh->subscribe_lock);
 fh->vdev = ((void*)0);
}
