
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format {int pixelformat; } ;
struct omapvideo_info {struct omap_overlay** overlays; } ;
struct omap_vout_device {struct omapvideo_info vid_info; struct v4l2_pix_format pix; } ;
struct omap_overlay {int id; } ;
typedef enum omap_color_mode { ____Placeholder_omap_color_mode } omap_color_mode ;


 int EINVAL ;
 int OMAP_DSS_COLOR_ARGB32 ;
 int OMAP_DSS_COLOR_RGB16 ;
 int OMAP_DSS_COLOR_RGB24P ;
 int OMAP_DSS_COLOR_RGB24U ;
 int OMAP_DSS_COLOR_RGBX32 ;
 int OMAP_DSS_COLOR_UYVY ;
 int OMAP_DSS_COLOR_YUV2 ;
 int OMAP_DSS_VIDEO1 ;







__attribute__((used)) static int video_mode_to_dss_mode(struct omap_vout_device *vout)
{
 struct omap_overlay *ovl;
 struct omapvideo_info *ovid;
 struct v4l2_pix_format *pix = &vout->pix;
 enum omap_color_mode mode;

 ovid = &vout->vid_info;
 ovl = ovid->overlays[0];

 switch (pix->pixelformat) {
 case 128:
  mode = OMAP_DSS_COLOR_YUV2;
  break;
 case 129:
  mode = OMAP_DSS_COLOR_UYVY;
  break;
 case 130:
  mode = OMAP_DSS_COLOR_RGB16;
  break;
 case 132:
  mode = OMAP_DSS_COLOR_RGB24P;
  break;
 case 131:
  mode = (ovl->id == OMAP_DSS_VIDEO1) ?
   OMAP_DSS_COLOR_RGB24U : OMAP_DSS_COLOR_ARGB32;
  break;
 case 133:
  mode = OMAP_DSS_COLOR_RGBX32;
  break;
 default:
  mode = -EINVAL;
  break;
 }
 return mode;
}
