
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct radio_isa_ops {int (* s_mute_volume ) (struct radio_isa_card*,int,int ) ;} ;
struct radio_isa_card {TYPE_3__* drv; int v4l2_dev; int io; int hdl; int vdev; TYPE_2__* volume; } ;
struct TYPE_6__ {int card; struct radio_isa_ops* ops; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_5__ {TYPE_1__ cur; } ;


 int kfree (struct radio_isa_card*) ;
 int release_region (int ,unsigned int) ;
 int stub1 (struct radio_isa_card*,int,int ) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_info (int *,char*,int ) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int radio_isa_common_remove(struct radio_isa_card *isa,
       unsigned region_size)
{
 const struct radio_isa_ops *ops = isa->drv->ops;

 ops->s_mute_volume(isa, 1, isa->volume ? isa->volume->cur.val : 0);
 video_unregister_device(&isa->vdev);
 v4l2_ctrl_handler_free(&isa->hdl);
 v4l2_device_unregister(&isa->v4l2_dev);
 release_region(isa->io, region_size);
 v4l2_info(&isa->v4l2_dev, "Removed radio card %s\n", isa->drv->card);
 kfree(isa);
 return 0;
}
