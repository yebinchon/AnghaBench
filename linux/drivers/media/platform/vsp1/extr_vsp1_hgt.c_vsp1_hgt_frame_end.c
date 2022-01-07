
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vsp1_histogram_buffer {int * addr; } ;
struct vsp1_hgt {int histo; } ;
struct vsp1_entity {int subdev; } ;


 int HGT_DATA_SIZE ;
 int VI6_HGT_HISTO (unsigned int,unsigned int) ;
 int VI6_HGT_MAXMIN ;
 int VI6_HGT_SUM ;
 struct vsp1_hgt* to_hgt (int *) ;
 void* vsp1_hgt_read (struct vsp1_hgt*,int ) ;
 int vsp1_histogram_buffer_complete (int *,struct vsp1_histogram_buffer*,int ) ;
 struct vsp1_histogram_buffer* vsp1_histogram_buffer_get (int *) ;

void vsp1_hgt_frame_end(struct vsp1_entity *entity)
{
 struct vsp1_hgt *hgt = to_hgt(&entity->subdev);
 struct vsp1_histogram_buffer *buf;
 unsigned int m;
 unsigned int n;
 u32 *data;

 buf = vsp1_histogram_buffer_get(&hgt->histo);
 if (!buf)
  return;

 data = buf->addr;

 *data++ = vsp1_hgt_read(hgt, VI6_HGT_MAXMIN);
 *data++ = vsp1_hgt_read(hgt, VI6_HGT_SUM);

 for (m = 0; m < 6; ++m)
  for (n = 0; n < 32; ++n)
   *data++ = vsp1_hgt_read(hgt, VI6_HGT_HISTO(m, n));

 vsp1_histogram_buffer_complete(&hgt->histo, buf, HGT_DATA_SIZE);
}
