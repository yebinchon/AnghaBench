
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_firmware_pieces {struct fw_img_parsing* img; } ;
struct fw_sec {int dummy; } ;
struct fw_img_parsing {int sec_counter; struct fw_sec* sec; } ;
typedef enum iwl_ucode_type { ____Placeholder_iwl_ucode_type } iwl_ucode_type ;


 int GFP_KERNEL ;
 struct fw_sec* krealloc (struct fw_sec*,size_t,int ) ;

__attribute__((used)) static void alloc_sec_data(struct iwl_firmware_pieces *pieces,
      enum iwl_ucode_type type,
      int sec)
{
 struct fw_img_parsing *img = &pieces->img[type];
 struct fw_sec *sec_memory;
 int size = sec + 1;
 size_t alloc_size = sizeof(*img->sec) * size;

 if (img->sec && img->sec_counter >= size)
  return;

 sec_memory = krealloc(img->sec, alloc_size, GFP_KERNEL);
 if (!sec_memory)
  return;

 img->sec = sec_memory;
 img->sec_counter = size;
}
