
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgb_hw {scalar_t__ phy_type; scalar_t__ lastLFC; scalar_t__ lastRFC; } ;


 scalar_t__ IXGB_READ_REG (struct ixgb_hw*,int ) ;
 int LFC ;
 int RFC ;
 scalar_t__ ixgb_phy_type_txn17401 ;
 int pr_debug (char*) ;

bool ixgb_check_for_bad_link(struct ixgb_hw *hw)
{
 u32 newLFC, newRFC;
 bool bad_link_returncode = 0;

 if (hw->phy_type == ixgb_phy_type_txn17401) {
  newLFC = IXGB_READ_REG(hw, LFC);
  newRFC = IXGB_READ_REG(hw, RFC);
  if ((hw->lastLFC + 250 < newLFC)
      || (hw->lastRFC + 250 < newRFC)) {
   pr_debug("BAD LINK! too many LFC/RFC since last check\n");
   bad_link_returncode = 1;
  }
  hw->lastLFC = newLFC;
  hw->lastRFC = newRFC;
 }

 return bad_link_returncode;
}
