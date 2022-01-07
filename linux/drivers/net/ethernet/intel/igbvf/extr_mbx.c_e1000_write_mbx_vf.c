
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct TYPE_3__ {int msgs_tx; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct e1000_hw {TYPE_2__ mbx; int mbx_lock; } ;
typedef scalar_t__ s32 ;


 int E1000_V2PMAILBOX_REQ ;
 int V2PMAILBOX (int ) ;
 int VMBMEM (int ) ;
 int array_ew32 (int ,size_t,int ) ;
 int e1000_check_for_ack_vf (struct e1000_hw*) ;
 int e1000_check_for_msg_vf (struct e1000_hw*) ;
 scalar_t__ e1000_obtain_mbx_lock_vf (struct e1000_hw*) ;
 int ew32 (int ,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static s32 e1000_write_mbx_vf(struct e1000_hw *hw, u32 *msg, u16 size)
{
 s32 err;
 u16 i;

 lockdep_assert_held(&hw->mbx_lock);


 err = e1000_obtain_mbx_lock_vf(hw);
 if (err)
  goto out_no_write;


 e1000_check_for_ack_vf(hw);
 e1000_check_for_msg_vf(hw);


 for (i = 0; i < size; i++)
  array_ew32(VMBMEM(0), i, msg[i]);


 hw->mbx.stats.msgs_tx++;


 ew32(V2PMAILBOX(0), E1000_V2PMAILBOX_REQ);

out_no_write:
 return err;
}
