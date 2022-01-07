
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_csi {int lock; int queue; int v4l; } ;


 int mutex_destroy (int *) ;
 int v4l2_device_unregister (int *) ;
 int vb2_queue_release (int *) ;

void sun4i_csi_dma_unregister(struct sun4i_csi *csi)
{
 v4l2_device_unregister(&csi->v4l);
 vb2_queue_release(&csi->queue);
 mutex_destroy(&csi->lock);
}
