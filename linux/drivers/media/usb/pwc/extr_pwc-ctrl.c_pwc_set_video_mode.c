
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int height; int width; scalar_t__ frame_trailer_size; scalar_t__ frame_header_size; scalar_t__ frame_size; scalar_t__ frame_total_size; int type; } ;


 scalar_t__ DEVICE_USE_CODEC1 (int ) ;
 scalar_t__ DEVICE_USE_CODEC3 (int ) ;
 int PWC_DEBUG_FLOW (char*,int,int,int,int) ;
 int PWC_DEBUG_SIZE (char*,int ,int ) ;
 int PWC_ERROR (char*,int ,int,int) ;
 int PWC_TRACE (char*,int) ;
 int pwc_get_size (struct pwc_device*,int,int) ;
 int set_video_mode_Kiara (struct pwc_device*,int,int,int,int*,int) ;
 int set_video_mode_Nala (struct pwc_device*,int,int,int,int*,int) ;
 int set_video_mode_Timon (struct pwc_device*,int,int,int,int*,int) ;
 int * size2name ;

int pwc_set_video_mode(struct pwc_device *pdev, int width, int height,
 int pixfmt, int frames, int *compression, int send_to_cam)
{
 int ret, size;

 PWC_DEBUG_FLOW("set_video_mode(%dx%d @ %d, pixfmt %08x).\n",
         width, height, frames, pixfmt);
 size = pwc_get_size(pdev, width, height);
 PWC_TRACE("decode_size = %d.\n", size);

 if (DEVICE_USE_CODEC1(pdev->type)) {
  ret = set_video_mode_Nala(pdev, size, pixfmt, frames,
       compression, send_to_cam);
 } else if (DEVICE_USE_CODEC3(pdev->type)) {
  ret = set_video_mode_Kiara(pdev, size, pixfmt, frames,
        compression, send_to_cam);
 } else {
  ret = set_video_mode_Timon(pdev, size, pixfmt, frames,
        compression, send_to_cam);
 }
 if (ret < 0) {
  PWC_ERROR("Failed to set video mode %s@%d fps; return code = %d\n", size2name[size], frames, ret);
  return ret;
 }
 pdev->frame_total_size = pdev->frame_size + pdev->frame_header_size + pdev->frame_trailer_size;
 PWC_DEBUG_SIZE("Set resolution to %dx%d\n", pdev->width, pdev->height);
 return 0;
}
