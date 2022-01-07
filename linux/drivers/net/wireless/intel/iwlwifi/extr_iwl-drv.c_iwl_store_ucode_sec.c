
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_firmware_pieces {struct fw_img_parsing* img; } ;
struct fw_sec_parsing {int data; int offset; } ;
struct fw_sec {int size; int data; int offset; } ;
struct fw_img_parsing {int sec_counter; struct fw_sec* sec; } ;
typedef enum iwl_ucode_type { ____Placeholder_iwl_ucode_type } iwl_ucode_type ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IWL_UCODE_TYPE_MAX ;
 scalar_t__ WARN_ON (int) ;
 struct fw_sec* krealloc (struct fw_sec*,size_t,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int iwl_store_ucode_sec(struct iwl_firmware_pieces *pieces,
          const void *data, enum iwl_ucode_type type,
          int size)
{
 struct fw_img_parsing *img;
 struct fw_sec *sec;
 struct fw_sec_parsing *sec_parse;
 size_t alloc_size;

 if (WARN_ON(!pieces || !data || type >= IWL_UCODE_TYPE_MAX))
  return -1;

 sec_parse = (struct fw_sec_parsing *)data;

 img = &pieces->img[type];

 alloc_size = sizeof(*img->sec) * (img->sec_counter + 1);
 sec = krealloc(img->sec, alloc_size, GFP_KERNEL);
 if (!sec)
  return -ENOMEM;
 img->sec = sec;

 sec = &img->sec[img->sec_counter];

 sec->offset = le32_to_cpu(sec_parse->offset);
 sec->data = sec_parse->data;
 sec->size = size - sizeof(sec_parse->offset);

 ++img->sec_counter;

 return 0;
}
