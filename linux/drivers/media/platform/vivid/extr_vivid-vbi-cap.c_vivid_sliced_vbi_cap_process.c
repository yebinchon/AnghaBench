
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct v4l2_sliced_vbi_data* data; } ;
struct vivid_dev {int vbi_cap_seq_count; scalar_t__ field_cap; size_t input; TYPE_2__ vbi_gen; int * std_signal_mode; } ;
struct TYPE_3__ {int sequence; int vb2_buf; } ;
struct vivid_buffer {TYPE_1__ vb; } ;
struct v4l2_sliced_vbi_data {int dummy; } ;


 scalar_t__ V4L2_FIELD_ALTERNATE ;
 int VIVID_INVALID_SIGNAL (int ) ;
 int memset (struct v4l2_sliced_vbi_data*,int ,int ) ;
 int vb2_plane_size (int *,int ) ;
 struct v4l2_sliced_vbi_data* vb2_plane_vaddr (int *,int ) ;
 int vivid_sliced_vbi_cap_fill (struct vivid_dev*,int) ;

void vivid_sliced_vbi_cap_process(struct vivid_dev *dev,
   struct vivid_buffer *buf)
{
 struct v4l2_sliced_vbi_data *vbuf =
   vb2_plane_vaddr(&buf->vb.vb2_buf, 0);

 buf->vb.sequence = dev->vbi_cap_seq_count;
 if (dev->field_cap == V4L2_FIELD_ALTERNATE)
  buf->vb.sequence /= 2;

 vivid_sliced_vbi_cap_fill(dev, buf->vb.sequence);

 memset(vbuf, 0, vb2_plane_size(&buf->vb.vb2_buf, 0));
 if (!VIVID_INVALID_SIGNAL(dev->std_signal_mode[dev->input])) {
  unsigned i;

  for (i = 0; i < 25; i++)
   vbuf[i] = dev->vbi_gen.data[i];
 }
}
