
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct TYPE_4__ {int msgs_rx; } ;
struct TYPE_3__ {TYPE_2__ stats; } ;
struct e1000_hw {TYPE_1__ mbx; int mbx_lock; } ;
typedef scalar_t__ s32 ;


 int E1000_V2PMAILBOX_ACK ;
 int V2PMAILBOX (int ) ;
 int VMBMEM (int ) ;
 int array_er32 (int ,size_t) ;
 scalar_t__ e1000_obtain_mbx_lock_vf (struct e1000_hw*) ;
 int ew32 (int ,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static s32 e1000_read_mbx_vf(struct e1000_hw *hw, u32 *msg, u16 size)
{
 s32 err;
 u16 i;

 lockdep_assert_held(&hw->mbx_lock);


 err = e1000_obtain_mbx_lock_vf(hw);
 if (err)
  goto out_no_read;


 for (i = 0; i < size; i++)
  msg[i] = array_er32(VMBMEM(0), i);


 ew32(V2PMAILBOX(0), E1000_V2PMAILBOX_ACK);


 hw->mbx.stats.msgs_rx++;

out_no_read:
 return err;
}
