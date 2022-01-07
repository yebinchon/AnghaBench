
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
struct fm10k_intfc {struct fm10k_hw hw; } ;


 int FM10K_REGS_LEN_PF ;
 int FM10K_REGS_LEN_VF ;


 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fm10k_get_regs_len(struct net_device *netdev)
{
 struct fm10k_intfc *interface = netdev_priv(netdev);
 struct fm10k_hw *hw = &interface->hw;

 switch (hw->mac.type) {
 case 129:
  return FM10K_REGS_LEN_PF * sizeof(u32);
 case 128:
  return FM10K_REGS_LEN_VF * sizeof(u32);
 default:
  return 0;
 }
}
