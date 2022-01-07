
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iwl_fw_runtime {int ops_ctx; TYPE_4__* ops; TYPE_3__* trans; TYPE_1__* fw; } ;
struct TYPE_8__ {scalar_t__ (* d3_debug_enable ) (int ) ;} ;
struct TYPE_7__ {TYPE_2__* cfg; } ;
struct TYPE_6__ {scalar_t__ d3_debug_data_length; } ;
struct TYPE_5__ {int ucode_capa; } ;


 int IWL_FW_ERROR_DUMP_D3_DEBUG_DATA ;
 int IWL_UCODE_TLV_CAPA_D3_DEBUG ;
 scalar_t__ fw_has_capa (int *,int ) ;
 scalar_t__ iwl_fw_dbg_type_on (struct iwl_fw_runtime*,int ) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static inline bool iwl_fw_dbg_is_d3_debug_enabled(struct iwl_fw_runtime *fwrt)
{
 return fw_has_capa(&fwrt->fw->ucode_capa,
      IWL_UCODE_TLV_CAPA_D3_DEBUG) &&
  fwrt->trans->cfg->d3_debug_data_length && fwrt->ops &&
  fwrt->ops->d3_debug_enable &&
  fwrt->ops->d3_debug_enable(fwrt->ops_ctx) &&
  iwl_fw_dbg_type_on(fwrt, IWL_FW_ERROR_DUMP_D3_DEBUG_DATA);
}
