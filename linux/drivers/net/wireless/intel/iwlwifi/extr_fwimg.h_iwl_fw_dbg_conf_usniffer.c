
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct iwl_fw_dbg_conf_tlv {int usniffer; } ;
struct TYPE_2__ {struct iwl_fw_dbg_conf_tlv** conf_tlv; } ;
struct iwl_fw {TYPE_1__ dbg; } ;



__attribute__((used)) static inline bool
iwl_fw_dbg_conf_usniffer(const struct iwl_fw *fw, u8 id)
{
 const struct iwl_fw_dbg_conf_tlv *conf_tlv = fw->dbg.conf_tlv[id];

 if (!conf_tlv)
  return 0;

 return conf_tlv->usniffer;
}
