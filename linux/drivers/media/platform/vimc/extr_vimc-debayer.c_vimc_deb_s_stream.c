
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vimc_pix_map {unsigned int bpp; } ;
struct TYPE_2__ {unsigned int width; unsigned int height; int code; } ;
struct vimc_deb_device {unsigned int sink_bpp; int * src_frame; TYPE_1__ sink_fmt; int sink_pix_map; int src_code; } ;
struct v4l2_subdev {int dummy; } ;


 int ENOMEM ;
 struct vimc_deb_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int vfree (int *) ;
 int vimc_deb_pix_map_by_code (int ) ;
 struct vimc_pix_map* vimc_pix_map_by_code (int ) ;
 int * vmalloc (unsigned int) ;

__attribute__((used)) static int vimc_deb_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct vimc_deb_device *vdeb = v4l2_get_subdevdata(sd);

 if (enable) {
  const struct vimc_pix_map *vpix;
  unsigned int frame_size;

  if (vdeb->src_frame)
   return 0;


  vpix = vimc_pix_map_by_code(vdeb->src_code);
  frame_size = vdeb->sink_fmt.width * vdeb->sink_fmt.height *
    vpix->bpp;


  vpix = vimc_pix_map_by_code(vdeb->sink_fmt.code);
  vdeb->sink_bpp = vpix->bpp;


  vdeb->sink_pix_map =
   vimc_deb_pix_map_by_code(vdeb->sink_fmt.code);





  vdeb->src_frame = vmalloc(frame_size);
  if (!vdeb->src_frame)
   return -ENOMEM;

 } else {
  if (!vdeb->src_frame)
   return 0;

  vfree(vdeb->src_frame);
  vdeb->src_frame = ((void*)0);
 }

 return 0;
}
