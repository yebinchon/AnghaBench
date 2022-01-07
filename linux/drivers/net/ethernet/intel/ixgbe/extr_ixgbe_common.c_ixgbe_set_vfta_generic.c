
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int BIT (int) ;
 int IXGBE_ERR_PARAM ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VFTA (int) ;
 int IXGBE_VLVF (int) ;
 int IXGBE_VLVFB (int) ;
 int IXGBE_VLVF_VIEN ;
 int IXGBE_VT_CTL ;
 int IXGBE_VT_CTL_VT_ENABLE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int ixgbe_find_vlvf_slot (struct ixgbe_hw*,int,int) ;

s32 ixgbe_set_vfta_generic(struct ixgbe_hw *hw, u32 vlan, u32 vind,
      bool vlan_on, bool vlvf_bypass)
{
 u32 regidx, vfta_delta, vfta, bits;
 s32 vlvf_index;

 if ((vlan > 4095) || (vind > 63))
  return IXGBE_ERR_PARAM;
 regidx = vlan / 32;
 vfta_delta = BIT(vlan % 32);
 vfta = IXGBE_READ_REG(hw, IXGBE_VFTA(regidx));





 vfta_delta &= vlan_on ? ~vfta : vfta;
 vfta ^= vfta_delta;
 if (!(IXGBE_READ_REG(hw, IXGBE_VT_CTL) & IXGBE_VT_CTL_VT_ENABLE))
  goto vfta_update;

 vlvf_index = ixgbe_find_vlvf_slot(hw, vlan, vlvf_bypass);
 if (vlvf_index < 0) {
  if (vlvf_bypass)
   goto vfta_update;
  return vlvf_index;
 }

 bits = IXGBE_READ_REG(hw, IXGBE_VLVFB(vlvf_index * 2 + vind / 32));


 bits |= BIT(vind % 32);
 if (vlan_on)
  goto vlvf_update;


 bits ^= BIT(vind % 32);

 if (!bits &&
     !IXGBE_READ_REG(hw, IXGBE_VLVFB(vlvf_index * 2 + 1 - vind / 32))) {




  if (vfta_delta)
   IXGBE_WRITE_REG(hw, IXGBE_VFTA(regidx), vfta);


  IXGBE_WRITE_REG(hw, IXGBE_VLVF(vlvf_index), 0);
  IXGBE_WRITE_REG(hw, IXGBE_VLVFB(vlvf_index * 2 + vind / 32), 0);

  return 0;
 }
 vfta_delta = 0;

vlvf_update:

 IXGBE_WRITE_REG(hw, IXGBE_VLVFB(vlvf_index * 2 + vind / 32), bits);
 IXGBE_WRITE_REG(hw, IXGBE_VLVF(vlvf_index), IXGBE_VLVF_VIEN | vlan);

vfta_update:

 if (vfta_delta)
  IXGBE_WRITE_REG(hw, IXGBE_VFTA(regidx), vfta);

 return 0;
}
