
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct osd_info {int dummy; } ;
struct ivtv {int v4l2_cap; TYPE_2__* streams; int ivtvfb_restore; TYPE_3__* osd_info; int osd_video_pbase; } ;
struct TYPE_6__ {int ivtvfb_info; int video_pbase; } ;
struct TYPE_4__ {int device_caps; } ;
struct TYPE_5__ {TYPE_1__ vdev; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int FB_BLANK_UNBLANK ;
 int GFP_KERNEL ;
 int IVTVFB_ERR (char*,...) ;
 size_t IVTV_DEC_STREAM_TYPE_MPG ;
 size_t IVTV_DEC_STREAM_TYPE_YUV ;
 int V4L2_CAP_VIDEO_OUTPUT_OVERLAY ;
 int __GFP_NOWARN ;
 int ivtv_udma_alloc (struct ivtv*) ;
 int ivtvfb_blank (int ,int *) ;
 int ivtvfb_card_id ;
 scalar_t__ ivtvfb_force_pat ;
 int ivtvfb_init_io (struct ivtv*) ;
 int ivtvfb_init_vidmode (struct ivtv*) ;
 int ivtvfb_release_buffers (struct ivtv*) ;
 int ivtvfb_restore ;
 int ivtvfb_set_par (int *) ;
 TYPE_3__* kzalloc (int,int) ;
 scalar_t__ pat_enabled () ;
 int pr_info (char*) ;
 int pr_warn (char*) ;
 scalar_t__ register_framebuffer (int *) ;
 int write_reg (int ,int) ;

__attribute__((used)) static int ivtvfb_init_card(struct ivtv *itv)
{
 int rc;
 if (itv->osd_info) {
  IVTVFB_ERR("Card %d already initialised\n", ivtvfb_card_id);
  return -EBUSY;
 }

 itv->osd_info = kzalloc(sizeof(struct osd_info),
     GFP_KERNEL|__GFP_NOWARN);
 if (itv->osd_info == ((void*)0)) {
  IVTVFB_ERR("Failed to allocate memory for osd_info\n");
  return -ENOMEM;
 }


 rc = ivtvfb_init_io(itv);
 if (rc) {
  ivtvfb_release_buffers(itv);
  return rc;
 }


 if ((rc = ivtvfb_init_vidmode(itv))) {
  ivtvfb_release_buffers(itv);
  return rc;
 }


 if (register_framebuffer(&itv->osd_info->ivtvfb_info) < 0) {
  ivtvfb_release_buffers(itv);
  return -EINVAL;
 }

 itv->osd_video_pbase = itv->osd_info->video_pbase;


 ivtvfb_set_par(&itv->osd_info->ivtvfb_info);


 write_reg(0, 0x02a30);
 write_reg(0, 0x02a34);


 ivtvfb_blank(FB_BLANK_UNBLANK, &itv->osd_info->ivtvfb_info);


 itv->ivtvfb_restore = ivtvfb_restore;


 ivtv_udma_alloc(itv);
 itv->streams[IVTV_DEC_STREAM_TYPE_YUV].vdev.device_caps |=
  V4L2_CAP_VIDEO_OUTPUT_OVERLAY;
 itv->streams[IVTV_DEC_STREAM_TYPE_MPG].vdev.device_caps |=
  V4L2_CAP_VIDEO_OUTPUT_OVERLAY;
 itv->v4l2_cap |= V4L2_CAP_VIDEO_OUTPUT_OVERLAY;
 return 0;

}
