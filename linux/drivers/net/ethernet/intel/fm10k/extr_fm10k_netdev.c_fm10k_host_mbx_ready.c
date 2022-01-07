
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
struct fm10k_intfc {scalar_t__ host_ready; struct fm10k_hw hw; } ;


 scalar_t__ fm10k_mac_vf ;

__attribute__((used)) static bool fm10k_host_mbx_ready(struct fm10k_intfc *interface)
{
 struct fm10k_hw *hw = &interface->hw;

 return (hw->mac.type == fm10k_mac_vf || interface->host_ready);
}
