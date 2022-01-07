
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vivid_dev {int* vbi_out_have_cc; int vbi_out_have_wss; int std_out; int * vbi_out_wss; int ** vbi_out_cc; } ;
struct TYPE_2__ {int vb2_buf; } ;
struct vivid_buffer {TYPE_1__ vb; } ;
struct v4l2_sliced_vbi_data {int id; int line; int * data; int field; } ;




 int V4L2_STD_525_60 ;
 int V4L2_STD_625_50 ;
 int vb2_get_plane_payload (int *,int ) ;
 struct v4l2_sliced_vbi_data* vb2_plane_vaddr (int *,int ) ;

void vivid_sliced_vbi_out_process(struct vivid_dev *dev,
  struct vivid_buffer *buf)
{
 struct v4l2_sliced_vbi_data *vbi =
  vb2_plane_vaddr(&buf->vb.vb2_buf, 0);
 unsigned elems =
  vb2_get_plane_payload(&buf->vb.vb2_buf, 0) / sizeof(*vbi);

 dev->vbi_out_have_cc[0] = 0;
 dev->vbi_out_have_cc[1] = 0;
 dev->vbi_out_have_wss = 0;
 while (elems--) {
  switch (vbi->id) {
  case 129:
   if ((dev->std_out & V4L2_STD_525_60) && vbi->line == 21) {
    dev->vbi_out_have_cc[!!vbi->field] = 1;
    dev->vbi_out_cc[!!vbi->field][0] = vbi->data[0];
    dev->vbi_out_cc[!!vbi->field][1] = vbi->data[1];
   }
   break;
  case 128:
   if ((dev->std_out & V4L2_STD_625_50) &&
       vbi->field == 0 && vbi->line == 23) {
    dev->vbi_out_have_wss = 1;
    dev->vbi_out_wss[0] = vbi->data[0];
    dev->vbi_out_wss[1] = vbi->data[1];
   }
   break;
  }
  vbi++;
 }
}
