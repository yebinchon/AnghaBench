
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* connect ) (struct fm10k_hw*,TYPE_3__*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct fm10k_hw {TYPE_3__ mbx; TYPE_1__ mac; } ;
struct fm10k_intfc {struct fm10k_hw hw; } ;


 scalar_t__ fm10k_mac_pf ;
 int fm10k_mbx_free_irq (struct fm10k_intfc*) ;
 int fm10k_mbx_request_irq_pf (struct fm10k_intfc*) ;
 int fm10k_mbx_request_irq_vf (struct fm10k_intfc*) ;
 int stub1 (struct fm10k_hw*,TYPE_3__*) ;

int fm10k_mbx_request_irq(struct fm10k_intfc *interface)
{
 struct fm10k_hw *hw = &interface->hw;
 int err;


 if (hw->mac.type == fm10k_mac_pf)
  err = fm10k_mbx_request_irq_pf(interface);
 else
  err = fm10k_mbx_request_irq_vf(interface);
 if (err)
  return err;


 err = hw->mbx.ops.connect(hw, &hw->mbx);


 if (err)
  fm10k_mbx_free_irq(interface);

 return err;
}
