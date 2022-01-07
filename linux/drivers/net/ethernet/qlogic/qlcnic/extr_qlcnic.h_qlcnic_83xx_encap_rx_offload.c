
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {int* extra_capability; } ;


 int QLCNIC_83XX_FW_CAPAB_ENCAP_RX_OFFLOAD ;

__attribute__((used)) static inline bool qlcnic_83xx_encap_rx_offload(struct qlcnic_adapter *adapter)
{
 return adapter->ahw->extra_capability[0] &
        QLCNIC_83XX_FW_CAPAB_ENCAP_RX_OFFLOAD;
}
