
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iwl_firmware_pieces {TYPE_3__* img; } ;
struct TYPE_5__ {TYPE_1__* img; } ;
struct iwl_drv {TYPE_2__ fw; } ;
struct fw_desc {int dummy; } ;
typedef enum iwl_ucode_type { ____Placeholder_iwl_ucode_type } iwl_ucode_type ;
struct TYPE_6__ {int sec_counter; } ;
struct TYPE_4__ {int num_sec; struct fw_desc* sec; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int get_sec (struct iwl_firmware_pieces*,int,int) ;
 scalar_t__ iwl_alloc_fw_desc (struct iwl_drv*,struct fw_desc*,int ) ;
 struct fw_desc* kcalloc (int,int,int ) ;

__attribute__((used)) static int iwl_alloc_ucode(struct iwl_drv *drv,
      struct iwl_firmware_pieces *pieces,
      enum iwl_ucode_type type)
{
 int i;
 struct fw_desc *sec;

 sec = kcalloc(pieces->img[type].sec_counter, sizeof(*sec), GFP_KERNEL);
 if (!sec)
  return -ENOMEM;
 drv->fw.img[type].sec = sec;
 drv->fw.img[type].num_sec = pieces->img[type].sec_counter;

 for (i = 0; i < pieces->img[type].sec_counter; i++)
  if (iwl_alloc_fw_desc(drv, &sec[i], get_sec(pieces, type, i)))
   return -ENOMEM;

 return 0;
}
