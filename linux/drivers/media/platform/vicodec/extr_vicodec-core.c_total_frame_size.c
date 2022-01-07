
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vicodec_q_data {unsigned int coded_width; unsigned int coded_height; TYPE_1__* info; } ;
struct TYPE_2__ {unsigned int width_div; unsigned int height_div; int components_num; } ;


 int WARN_ON (int) ;

__attribute__((used)) static unsigned int total_frame_size(struct vicodec_q_data *q_data)
{
 unsigned int size;
 unsigned int chroma_div;

 if (!q_data->info) {
  WARN_ON(1);
  return 0;
 }
 size = q_data->coded_width * q_data->coded_height;
 chroma_div = q_data->info->width_div * q_data->info->height_div;

 if (q_data->info->components_num == 4)
  return 2 * size + 2 * (size / chroma_div);
 else if (q_data->info->components_num == 3)
  return size + 2 * (size / chroma_div);
 return size;
}
