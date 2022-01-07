
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct iwl_mvm {TYPE_2__* fw; TYPE_1__* nvm_data; } ;
struct TYPE_4__ {int valid_rx_ant; } ;
struct TYPE_3__ {int valid_rx_ant; } ;



__attribute__((used)) static inline u8 iwl_mvm_get_valid_rx_ant(struct iwl_mvm *mvm)
{
 return mvm->nvm_data && mvm->nvm_data->valid_rx_ant ?
        mvm->fw->valid_rx_ant & mvm->nvm_data->valid_rx_ant :
        mvm->fw->valid_rx_ant;
}
