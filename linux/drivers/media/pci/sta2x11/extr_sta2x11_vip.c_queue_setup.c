
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_2__ {unsigned int sizeimage; } ;
struct sta2x11_vip {scalar_t__ bcount; scalar_t__ tcount; int * active; scalar_t__ sequence; TYPE_1__ format; } ;
struct device {int dummy; } ;


 unsigned int MAX_FRAMES ;
 struct sta2x11_vip* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int queue_setup(struct vb2_queue *vq,
         unsigned int *nbuffers, unsigned int *nplanes,
         unsigned int sizes[], struct device *alloc_devs[])
{
 struct sta2x11_vip *vip = vb2_get_drv_priv(vq);

 if (!(*nbuffers) || *nbuffers < MAX_FRAMES)
  *nbuffers = MAX_FRAMES;

 *nplanes = 1;
 sizes[0] = vip->format.sizeimage;

 vip->sequence = 0;
 vip->active = ((void*)0);
 vip->tcount = 0;
 vip->bcount = 0;

 return 0;
}
