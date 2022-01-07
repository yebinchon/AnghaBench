
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int video_buffer_size; int fb_info; int * video_vbase; int video_pbase; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_DMA32 ;
 int GFP_KERNEL ;
 int MAX_OSD_HEIGHT ;
 int MAX_OSD_WIDTH ;
 int * kzalloc (int,int) ;
 int pr_info (char*,int ,int *,int) ;
 scalar_t__ register_framebuffer (int *) ;
 int virt_to_phys (int *) ;
 int vivid_clear_fb (struct vivid_dev*) ;
 int vivid_fb_init_vidmode (struct vivid_dev*) ;
 int vivid_fb_release_buffers (struct vivid_dev*) ;
 int vivid_fb_set_par (int *) ;

int vivid_fb_init(struct vivid_dev *dev)
{
 int ret;

 dev->video_buffer_size = MAX_OSD_HEIGHT * MAX_OSD_WIDTH * 2;
 dev->video_vbase = kzalloc(dev->video_buffer_size, GFP_KERNEL | GFP_DMA32);
 if (dev->video_vbase == ((void*)0))
  return -ENOMEM;
 dev->video_pbase = virt_to_phys(dev->video_vbase);

 pr_info("Framebuffer at 0x%lx, mapped to 0x%p, size %dk\n",
   dev->video_pbase, dev->video_vbase,
   dev->video_buffer_size / 1024);


 ret = vivid_fb_init_vidmode(dev);
 if (ret) {
  vivid_fb_release_buffers(dev);
  return ret;
 }

 vivid_clear_fb(dev);


 if (register_framebuffer(&dev->fb_info) < 0) {
  vivid_fb_release_buffers(dev);
  return -EINVAL;
 }


 vivid_fb_set_par(&dev->fb_info);
 return 0;

}
