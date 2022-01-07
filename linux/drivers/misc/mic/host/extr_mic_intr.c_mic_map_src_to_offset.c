
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mic_device {TYPE_1__* intr_info; } ;
typedef enum mic_intr_type { ____Placeholder_mic_intr_type } mic_intr_type ;
struct TYPE_2__ {int* intr_len; scalar_t__* intr_start_idx; } ;


 int MIC_NUM_INTR_TYPES ;
 scalar_t__ MIC_NUM_OFFSETS ;

__attribute__((used)) static u16 mic_map_src_to_offset(struct mic_device *mdev,
     int intr_src, enum mic_intr_type type)
{
 if (type >= MIC_NUM_INTR_TYPES)
  return MIC_NUM_OFFSETS;
 if (intr_src >= mdev->intr_info->intr_len[type])
  return MIC_NUM_OFFSETS;

 return mdev->intr_info->intr_start_idx[type] + intr_src;
}
