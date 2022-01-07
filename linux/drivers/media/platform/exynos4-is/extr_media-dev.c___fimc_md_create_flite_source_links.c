
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct media_entity {int dummy; } ;
struct fimc_md {TYPE_6__* fimc_is; struct fimc_lite** fimc_lite; } ;
struct TYPE_8__ {struct media_entity entity; } ;
struct TYPE_9__ {TYPE_2__ vdev; } ;
struct TYPE_7__ {struct media_entity entity; } ;
struct fimc_lite {TYPE_3__ ve; TYPE_1__ subdev; } ;
struct TYPE_10__ {struct media_entity entity; } ;
struct TYPE_11__ {TYPE_4__ subdev; } ;
struct TYPE_12__ {TYPE_5__ isp; } ;


 int FIMC_LITE_MAX_DEVS ;
 int FLITE_SD_PAD_SOURCE_DMA ;
 int FLITE_SD_PAD_SOURCE_ISP ;
 int media_create_pad_link (struct media_entity*,int ,struct media_entity*,int ,int ) ;

__attribute__((used)) static int __fimc_md_create_flite_source_links(struct fimc_md *fmd)
{
 struct media_entity *source, *sink;
 int i, ret = 0;

 for (i = 0; i < FIMC_LITE_MAX_DEVS; i++) {
  struct fimc_lite *fimc = fmd->fimc_lite[i];

  if (fimc == ((void*)0))
   continue;

  source = &fimc->subdev.entity;
  sink = &fimc->ve.vdev.entity;

  ret = media_create_pad_link(source, FLITE_SD_PAD_SOURCE_DMA,
            sink, 0, 0);
  if (ret)
   break;

  sink = &fmd->fimc_is->isp.subdev.entity;
  ret = media_create_pad_link(source, FLITE_SD_PAD_SOURCE_ISP,
            sink, 0, 0);
  if (ret)
   break;
 }

 return ret;
}
