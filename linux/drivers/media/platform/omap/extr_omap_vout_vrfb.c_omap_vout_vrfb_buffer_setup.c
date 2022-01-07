
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; } ;
struct omap_vout_device {scalar_t__ dss_mode; int bpp; TYPE_1__ pix; int * smsshado_phy_addr; int * vrfb_context; int vrfb_static_allocation; } ;


 int ENOMEM ;
 scalar_t__ OMAP_DSS_COLOR_UYVY ;
 scalar_t__ OMAP_DSS_COLOR_YUV2 ;
 unsigned int VRFB_NUM_BUFS ;
 int is_rotation_enabled (struct omap_vout_device*) ;
 scalar_t__ omap_vout_allocate_vrfb_buffers (struct omap_vout_device*,unsigned int*,unsigned int) ;
 int omap_vrfb_setup (int *,int ,int ,int ,int ,int) ;

int omap_vout_vrfb_buffer_setup(struct omap_vout_device *vout,
     unsigned int *count, unsigned int startindex)
{
 int i;
 bool yuv_mode;

 if (!is_rotation_enabled(vout))
  return 0;


 *count = *count > VRFB_NUM_BUFS ? VRFB_NUM_BUFS : *count;




 if (!vout->vrfb_static_allocation)
  if (omap_vout_allocate_vrfb_buffers(vout, count, startindex))
   return -ENOMEM;

 if (vout->dss_mode == OMAP_DSS_COLOR_YUV2 ||
   vout->dss_mode == OMAP_DSS_COLOR_UYVY)
  yuv_mode = 1;
 else
  yuv_mode = 0;

 for (i = 0; i < *count; i++)
  omap_vrfb_setup(&vout->vrfb_context[i],
    vout->smsshado_phy_addr[i], vout->pix.width,
    vout->pix.height, vout->bpp, yuv_mode);

 return 0;
}
