
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vivid_vbi_gen_data {TYPE_1__* data; } ;
struct vivid_dev {int* std_cap; size_t input; int* vbi_out_wss; int** vbi_out_cc; scalar_t__* vbi_out_have_cc; scalar_t__ loop_video; int tpg; scalar_t__ vbi_out_have_wss; struct vivid_vbi_gen_data vbi_gen; } ;
struct TYPE_2__ {int* data; scalar_t__ id; } ;






 int V4L2_STD_525_60 ;
 int tpg_g_video_aspect (int *) ;
 int vivid_vbi_gen_sliced (struct vivid_vbi_gen_data*,int,unsigned int) ;

__attribute__((used)) static void vivid_sliced_vbi_cap_fill(struct vivid_dev *dev, unsigned seqnr)
{
 struct vivid_vbi_gen_data *vbi_gen = &dev->vbi_gen;
 bool is_60hz = dev->std_cap[dev->input] & V4L2_STD_525_60;

 vivid_vbi_gen_sliced(vbi_gen, is_60hz, seqnr);

 if (!is_60hz) {
  if (dev->loop_video) {
   if (dev->vbi_out_have_wss) {
    vbi_gen->data[12].data[0] = dev->vbi_out_wss[0];
    vbi_gen->data[12].data[1] = dev->vbi_out_wss[1];
   } else {
    vbi_gen->data[12].id = 0;
   }
  } else {
   switch (tpg_g_video_aspect(&dev->tpg)) {
   case 131:
    vbi_gen->data[12].data[0] = 0x01;
    break;
   case 129:
    vbi_gen->data[12].data[0] = 0x0b;
    break;
   case 130:
    vbi_gen->data[12].data[0] = 0x07;
    break;
   case 128:
   default:
    vbi_gen->data[12].data[0] = 0x08;
    break;
   }
  }
 } else if (dev->loop_video && is_60hz) {
  if (dev->vbi_out_have_cc[0]) {
   vbi_gen->data[0].data[0] = dev->vbi_out_cc[0][0];
   vbi_gen->data[0].data[1] = dev->vbi_out_cc[0][1];
  } else {
   vbi_gen->data[0].id = 0;
  }
  if (dev->vbi_out_have_cc[1]) {
   vbi_gen->data[1].data[0] = dev->vbi_out_cc[1][0];
   vbi_gen->data[1].data[1] = dev->vbi_out_cc[1][1];
  } else {
   vbi_gen->data[1].id = 0;
  }
 }
}
