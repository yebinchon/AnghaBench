
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw5864_input {int vidq; int hdl; int vdev; } ;


 int v4l2_ctrl_handler_free (int *) ;
 int vb2_queue_release (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void tw5864_video_input_fini(struct tw5864_input *dev)
{
 video_unregister_device(&dev->vdev);
 v4l2_ctrl_handler_free(&dev->hdl);
 vb2_queue_release(&dev->vidq);
}
