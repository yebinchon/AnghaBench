
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int device; } ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct e1000_adapter {int flags; int max_hw_frame_size; struct e1000_hw hw; struct pci_dev* pdev; } ;
typedef scalar_t__ s32 ;


 int DEFAULT_JUMBO ;
 int E1000_DEV_ID_82571EB_COPPER ;
 int E1000_DEV_ID_82571EB_FIBER ;



 int E1000_DEV_ID_82571EB_SERDES ;
 int E1000_DEV_ID_82571EB_SERDES_QUAD ;

 int E1000_DEV_ID_82573L ;
 int E1000_STATUS_FUNC_1 ;
 int FLAG_HAS_JUMBO_FRAMES ;
 int FLAG_HAS_WOL ;
 int FLAG_IS_QUAD_PORT ;
 int FLAG_IS_QUAD_PORT_A ;
 int STATUS ;


 scalar_t__ e1000_init_mac_params_82571 (struct e1000_hw*) ;
 scalar_t__ e1000_init_nvm_params_82571 (struct e1000_hw*) ;
 scalar_t__ e1000_init_phy_params_82571 (struct e1000_hw*) ;
 int er32 (int ) ;

__attribute__((used)) static s32 e1000_get_variants_82571(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 static int global_quad_port_a;
 struct pci_dev *pdev = adapter->pdev;
 int is_port_b = er32(STATUS) & E1000_STATUS_FUNC_1;
 s32 rc;

 rc = e1000_init_mac_params_82571(hw);
 if (rc)
  return rc;

 rc = e1000_init_nvm_params_82571(hw);
 if (rc)
  return rc;

 rc = e1000_init_phy_params_82571(hw);
 if (rc)
  return rc;


 switch (pdev->device) {
 case 133:
 case 131:
 case 132:
 case 130:
  adapter->flags |= FLAG_IS_QUAD_PORT;

  if (global_quad_port_a == 0)
   adapter->flags |= FLAG_IS_QUAD_PORT_A;

  global_quad_port_a++;
  if (global_quad_port_a == 4)
   global_quad_port_a = 0;
  break;
 default:
  break;
 }

 switch (adapter->hw.mac.type) {
 case 129:

  if (((pdev->device == E1000_DEV_ID_82571EB_FIBER) ||
       (pdev->device == E1000_DEV_ID_82571EB_SERDES) ||
       (pdev->device == E1000_DEV_ID_82571EB_COPPER)) &&
      (is_port_b))
   adapter->flags &= ~FLAG_HAS_WOL;

  if (adapter->flags & FLAG_IS_QUAD_PORT &&
      (!(adapter->flags & FLAG_IS_QUAD_PORT_A)))
   adapter->flags &= ~FLAG_HAS_WOL;

  if (pdev->device == E1000_DEV_ID_82571EB_SERDES_QUAD)
   adapter->flags &= ~FLAG_HAS_WOL;
  break;
 case 128:
  if (pdev->device == E1000_DEV_ID_82573L) {
   adapter->flags |= FLAG_HAS_JUMBO_FRAMES;
   adapter->max_hw_frame_size = DEFAULT_JUMBO;
  }
  break;
 default:
  break;
 }

 return 0;
}
