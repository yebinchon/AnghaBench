
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtv {int v4l2_dev; int vb2q_lock; int v4l2_lock; int vdev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usbtv_stop (struct usbtv*) ;
 int v4l2_device_disconnect (int *) ;
 int v4l2_device_put (int *) ;
 int video_unregister_device (int *) ;

void usbtv_video_free(struct usbtv *usbtv)
{
 mutex_lock(&usbtv->vb2q_lock);
 mutex_lock(&usbtv->v4l2_lock);

 usbtv_stop(usbtv);
 video_unregister_device(&usbtv->vdev);
 v4l2_device_disconnect(&usbtv->v4l2_dev);

 mutex_unlock(&usbtv->v4l2_lock);
 mutex_unlock(&usbtv->vb2q_lock);

 v4l2_device_put(&usbtv->v4l2_dev);
}
