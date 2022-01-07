
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {int * pseudo_palette; TYPE_2__ cmap; } ;
struct vivid_dev {int * video_vbase; TYPE_1__ fb_info; } ;


 int fb_dealloc_cmap (TYPE_2__*) ;
 int kfree (int *) ;

void vivid_fb_release_buffers(struct vivid_dev *dev)
{
 if (dev->video_vbase == ((void*)0))
  return;


 if (dev->fb_info.cmap.len)
  fb_dealloc_cmap(&dev->fb_info.cmap);


 kfree(dev->fb_info.pseudo_palette);
 kfree(dev->video_vbase);
}
