
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_queue {unsigned int num_buffers; } ;
struct device {int dummy; } ;
struct TYPE_4__ {unsigned int sizeimage; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct TYPE_6__ {TYPE_2__ fmt; } ;
struct common_obj {TYPE_3__ fmt; } ;
struct channel_obj {struct common_obj* common; } ;


 int EINVAL ;
 size_t VPIF_VIDEO_INDEX ;
 struct channel_obj* vb2_get_drv_priv (struct vb2_queue*) ;
 int vpif_calculate_offsets (struct channel_obj*) ;

__attribute__((used)) static int vpif_buffer_queue_setup(struct vb2_queue *vq,
    unsigned int *nbuffers, unsigned int *nplanes,
    unsigned int sizes[], struct device *alloc_devs[])
{
 struct channel_obj *ch = vb2_get_drv_priv(vq);
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
 unsigned size = common->fmt.fmt.pix.sizeimage;

 if (*nplanes) {
  if (sizes[0] < size)
   return -EINVAL;
  size = sizes[0];
 }

 if (vq->num_buffers + *nbuffers < 3)
  *nbuffers = 3 - vq->num_buffers;

 *nplanes = 1;
 sizes[0] = size;


 vpif_calculate_offsets(ch);

 return 0;
}
