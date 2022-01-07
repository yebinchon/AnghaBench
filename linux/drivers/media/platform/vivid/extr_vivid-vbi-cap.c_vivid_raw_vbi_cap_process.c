
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vivid_dev {int vbi_cap_seq_count; scalar_t__ field_cap; size_t input; int vbi_gen; int * std_signal_mode; } ;
struct TYPE_2__ {int sequence; int vb2_buf; } ;
struct vivid_buffer {TYPE_1__ vb; } ;
struct v4l2_vbi_format {int dummy; } ;


 scalar_t__ V4L2_FIELD_ALTERNATE ;
 int VIVID_INVALID_SIGNAL (int ) ;
 int memset (int *,int,int ) ;
 int vb2_plane_size (int *,int ) ;
 int * vb2_plane_vaddr (int *,int ) ;
 int vivid_g_fmt_vbi_cap (struct vivid_dev*,struct v4l2_vbi_format*) ;
 int vivid_sliced_vbi_cap_fill (struct vivid_dev*,int) ;
 int vivid_vbi_gen_raw (int *,struct v4l2_vbi_format*,int *) ;

void vivid_raw_vbi_cap_process(struct vivid_dev *dev, struct vivid_buffer *buf)
{
 struct v4l2_vbi_format vbi;
 u8 *vbuf = vb2_plane_vaddr(&buf->vb.vb2_buf, 0);

 vivid_g_fmt_vbi_cap(dev, &vbi);
 buf->vb.sequence = dev->vbi_cap_seq_count;
 if (dev->field_cap == V4L2_FIELD_ALTERNATE)
  buf->vb.sequence /= 2;

 vivid_sliced_vbi_cap_fill(dev, buf->vb.sequence);

 memset(vbuf, 0x10, vb2_plane_size(&buf->vb.vb2_buf, 0));

 if (!VIVID_INVALID_SIGNAL(dev->std_signal_mode[dev->input]))
  vivid_vbi_gen_raw(&dev->vbi_gen, &vbi, vbuf);
}
