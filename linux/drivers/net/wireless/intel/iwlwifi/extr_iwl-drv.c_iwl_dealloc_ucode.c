
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cmd_versions; } ;
struct TYPE_4__ {int mem_tlv; int * trigger_tlv; int * conf_tlv; int dest_tlv; } ;
struct TYPE_6__ {scalar_t__ img; TYPE_2__ ucode_capa; int iml; TYPE_1__ dbg; } ;
struct iwl_drv {TYPE_3__ fw; } ;


 int ARRAY_SIZE (int *) ;
 int IWL_UCODE_TYPE_MAX ;
 int iwl_free_fw_img (struct iwl_drv*,scalar_t__) ;
 int kfree (int ) ;

__attribute__((used)) static void iwl_dealloc_ucode(struct iwl_drv *drv)
{
 int i;

 kfree(drv->fw.dbg.dest_tlv);
 for (i = 0; i < ARRAY_SIZE(drv->fw.dbg.conf_tlv); i++)
  kfree(drv->fw.dbg.conf_tlv[i]);
 for (i = 0; i < ARRAY_SIZE(drv->fw.dbg.trigger_tlv); i++)
  kfree(drv->fw.dbg.trigger_tlv[i]);
 kfree(drv->fw.dbg.mem_tlv);
 kfree(drv->fw.iml);
 kfree(drv->fw.ucode_capa.cmd_versions);

 for (i = 0; i < IWL_UCODE_TYPE_MAX; i++)
  iwl_free_fw_img(drv, drv->fw.img + i);
}
