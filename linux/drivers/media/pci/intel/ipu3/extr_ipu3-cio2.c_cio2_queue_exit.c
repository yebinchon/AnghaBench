
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int entity; } ;
struct TYPE_5__ {int entity; } ;
struct cio2_queue {int lock; TYPE_3__ subdev; int vbq; TYPE_2__ vdev; } ;
struct cio2_device {TYPE_1__* pci_dev; } ;
struct TYPE_4__ {int dev; } ;


 int cio2_fbpt_exit (struct cio2_queue*,int *) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 int v4l2_device_unregister_subdev (TYPE_3__*) ;
 int vb2_queue_release (int *) ;
 int video_unregister_device (TYPE_2__*) ;

__attribute__((used)) static void cio2_queue_exit(struct cio2_device *cio2, struct cio2_queue *q)
{
 video_unregister_device(&q->vdev);
 media_entity_cleanup(&q->vdev.entity);
 vb2_queue_release(&q->vbq);
 v4l2_device_unregister_subdev(&q->subdev);
 media_entity_cleanup(&q->subdev.entity);
 cio2_fbpt_exit(q, &cio2->pci_dev->dev);
 mutex_destroy(&q->lock);
}
