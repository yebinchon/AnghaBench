
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ixgb_hw {int mc_filter_type; } ;


 int ASSERT (int ) ;
 int ENTER () ;
 int pr_debug (char*) ;

__attribute__((used)) static u32
ixgb_hash_mc_addr(struct ixgb_hw *hw,
     u8 *mc_addr)
{
 u32 hash_value = 0;

 ENTER();




 switch (hw->mc_filter_type) {



 case 0:

  hash_value =
      ((mc_addr[4] >> 4) | (((u16) mc_addr[5]) << 4));
  break;
 case 1:
  hash_value =
      ((mc_addr[4] >> 3) | (((u16) mc_addr[5]) << 5));
  break;
 case 2:
  hash_value =
      ((mc_addr[4] >> 2) | (((u16) mc_addr[5]) << 6));
  break;
 case 3:
  hash_value = ((mc_addr[4]) | (((u16) mc_addr[5]) << 8));
  break;
 default:

  pr_debug("MC filter type param set incorrectly\n");
  ASSERT(0);
  break;
 }

 hash_value &= 0xFFF;
 return hash_value;
}
