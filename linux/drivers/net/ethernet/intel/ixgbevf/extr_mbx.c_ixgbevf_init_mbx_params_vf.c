
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rsts; scalar_t__ acks; scalar_t__ reqs; scalar_t__ msgs_rx; scalar_t__ msgs_tx; } ;
struct ixgbe_mbx_info {TYPE_1__ stats; int size; int udelay; scalar_t__ timeout; } ;
struct ixgbe_hw {struct ixgbe_mbx_info mbx; } ;
typedef int s32 ;


 int IXGBE_VFMAILBOX_SIZE ;
 int IXGBE_VF_MBX_INIT_DELAY ;

__attribute__((used)) static s32 ixgbevf_init_mbx_params_vf(struct ixgbe_hw *hw)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;




 mbx->timeout = 0;
 mbx->udelay = IXGBE_VF_MBX_INIT_DELAY;

 mbx->size = IXGBE_VFMAILBOX_SIZE;

 mbx->stats.msgs_tx = 0;
 mbx->stats.msgs_rx = 0;
 mbx->stats.reqs = 0;
 mbx->stats.acks = 0;
 mbx->stats.rsts = 0;

 return 0;
}
