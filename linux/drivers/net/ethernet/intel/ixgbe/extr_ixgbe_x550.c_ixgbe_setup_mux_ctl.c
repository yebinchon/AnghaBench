
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ lan_id; } ;
struct ixgbe_hw {TYPE_1__ bus; } ;


 int IXGBE_ESDP ;
 int IXGBE_ESDP_SDP0_DIR ;
 int IXGBE_ESDP_SDP0_NATIVE ;
 int IXGBE_ESDP_SDP1 ;
 int IXGBE_ESDP_SDP1_DIR ;
 int IXGBE_ESDP_SDP1_NATIVE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static void ixgbe_setup_mux_ctl(struct ixgbe_hw *hw)
{
 u32 esdp = IXGBE_READ_REG(hw, IXGBE_ESDP);

 if (hw->bus.lan_id) {
  esdp &= ~(IXGBE_ESDP_SDP1_NATIVE | IXGBE_ESDP_SDP1);
  esdp |= IXGBE_ESDP_SDP1_DIR;
 }
 esdp &= ~(IXGBE_ESDP_SDP0_NATIVE | IXGBE_ESDP_SDP0_DIR);
 IXGBE_WRITE_REG(hw, IXGBE_ESDP, esdp);
 IXGBE_WRITE_FLUSH(hw);
}
