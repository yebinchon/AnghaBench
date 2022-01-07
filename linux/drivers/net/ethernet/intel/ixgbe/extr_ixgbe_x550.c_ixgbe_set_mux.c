
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_2__ {int lan_id; } ;
struct ixgbe_hw {TYPE_1__ bus; } ;


 int IXGBE_ESDP ;
 int IXGBE_ESDP_SDP1 ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

__attribute__((used)) static void ixgbe_set_mux(struct ixgbe_hw *hw, u8 state)
{
 u32 esdp;

 if (!hw->bus.lan_id)
  return;
 esdp = IXGBE_READ_REG(hw, IXGBE_ESDP);
 if (state)
  esdp |= IXGBE_ESDP_SDP1;
 else
  esdp &= ~IXGBE_ESDP_SDP1;
 IXGBE_WRITE_REG(hw, IXGBE_ESDP, esdp);
 IXGBE_WRITE_FLUSH(hw);
}
