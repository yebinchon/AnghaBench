
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int * vfd; int disp_hdl; } ;


 int v4l2_ctrl_handler_free (int *) ;
 int video_unregister_device (int *) ;

void solo_v4l2_exit(struct solo_dev *solo_dev)
{
 if (solo_dev->vfd == ((void*)0))
  return;

 video_unregister_device(solo_dev->vfd);
 v4l2_ctrl_handler_free(&solo_dev->disp_hdl);
 solo_dev->vfd = ((void*)0);
}
