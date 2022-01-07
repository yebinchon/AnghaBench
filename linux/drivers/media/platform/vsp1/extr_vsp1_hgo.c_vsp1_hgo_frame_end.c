
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct vsp1_histogram_buffer {void** addr; } ;
struct TYPE_4__ {int vsp1; } ;
struct TYPE_5__ {TYPE_1__ entity; } ;
struct vsp1_hgo {int num_bins; TYPE_2__ histo; scalar_t__ max_rgb; } ;
struct vsp1_entity {int subdev; } ;


 int VI6_HGO_B_HISTO (unsigned int) ;
 int VI6_HGO_B_MAXMIN ;
 int VI6_HGO_B_SUM ;
 int VI6_HGO_EXT_HIST_ADDR ;
 int VI6_HGO_EXT_HIST_DATA ;
 int VI6_HGO_G_HISTO (unsigned int) ;
 int VI6_HGO_G_MAXMIN ;
 int VI6_HGO_G_SUM ;
 int VI6_HGO_R_HISTO (unsigned int) ;
 int VI6_HGO_R_MAXMIN ;
 int VI6_HGO_R_SUM ;
 struct vsp1_hgo* to_hgo (int *) ;
 void* vsp1_hgo_read (struct vsp1_hgo*,int ) ;
 int vsp1_histogram_buffer_complete (TYPE_2__*,struct vsp1_histogram_buffer*,size_t) ;
 struct vsp1_histogram_buffer* vsp1_histogram_buffer_get (TYPE_2__*) ;
 int vsp1_write (int ,int ,unsigned int) ;

void vsp1_hgo_frame_end(struct vsp1_entity *entity)
{
 struct vsp1_hgo *hgo = to_hgo(&entity->subdev);
 struct vsp1_histogram_buffer *buf;
 unsigned int i;
 size_t size;
 u32 *data;

 buf = vsp1_histogram_buffer_get(&hgo->histo);
 if (!buf)
  return;

 data = buf->addr;

 if (hgo->num_bins == 256) {
  *data++ = vsp1_hgo_read(hgo, VI6_HGO_G_MAXMIN);
  *data++ = vsp1_hgo_read(hgo, VI6_HGO_G_SUM);

  for (i = 0; i < 256; ++i) {
   vsp1_write(hgo->histo.entity.vsp1,
       VI6_HGO_EXT_HIST_ADDR, i);
   *data++ = vsp1_hgo_read(hgo, VI6_HGO_EXT_HIST_DATA);
  }

  size = (2 + 256) * sizeof(u32);
 } else if (hgo->max_rgb) {
  *data++ = vsp1_hgo_read(hgo, VI6_HGO_G_MAXMIN);
  *data++ = vsp1_hgo_read(hgo, VI6_HGO_G_SUM);

  for (i = 0; i < 64; ++i)
   *data++ = vsp1_hgo_read(hgo, VI6_HGO_G_HISTO(i));

  size = (2 + 64) * sizeof(u32);
 } else {
  *data++ = vsp1_hgo_read(hgo, VI6_HGO_R_MAXMIN);
  *data++ = vsp1_hgo_read(hgo, VI6_HGO_G_MAXMIN);
  *data++ = vsp1_hgo_read(hgo, VI6_HGO_B_MAXMIN);

  *data++ = vsp1_hgo_read(hgo, VI6_HGO_R_SUM);
  *data++ = vsp1_hgo_read(hgo, VI6_HGO_G_SUM);
  *data++ = vsp1_hgo_read(hgo, VI6_HGO_B_SUM);

  for (i = 0; i < 64; ++i) {
   data[i] = vsp1_hgo_read(hgo, VI6_HGO_R_HISTO(i));
   data[i+64] = vsp1_hgo_read(hgo, VI6_HGO_G_HISTO(i));
   data[i+128] = vsp1_hgo_read(hgo, VI6_HGO_B_HISTO(i));
  }

  size = (6 + 64 * 3) * sizeof(u32);
 }

 vsp1_histogram_buffer_complete(&hgo->histo, buf, size);
}
