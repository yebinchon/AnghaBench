
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int media_type; } ;
struct e1000_hw {TYPE_1__ phy; } ;
struct igb_adapter {int copper_tries; int netdev; int flags; struct e1000_hw hw; } ;


 int E1000_CONNSW ;
 int E1000_CONNSW_AUTOSENSE_CONF ;
 int E1000_CONNSW_AUTOSENSE_EN ;
 int E1000_CONNSW_PHYSD ;
 int E1000_CONNSW_PHY_PDN ;
 int E1000_CONNSW_SERDESD ;
 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_LINK_MODE_PCIE_SERDES ;
 int IGB_FLAG_MEDIA_RESET ;



 int netdev_err (int ,char*) ;
 int netdev_info (int ,char*) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igb_check_swap_media(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 ctrl_ext, connsw;
 bool swap_now = 0;

 ctrl_ext = rd32(E1000_CTRL_EXT);
 connsw = rd32(E1000_CONNSW);





 if ((hw->phy.media_type == 130) &&
     (!(connsw & E1000_CONNSW_AUTOSENSE_EN))) {
  swap_now = 1;
 } else if ((hw->phy.media_type != 130) &&
     !(connsw & E1000_CONNSW_SERDESD)) {

  if (adapter->copper_tries < 4) {
   adapter->copper_tries++;
   connsw |= E1000_CONNSW_AUTOSENSE_CONF;
   wr32(E1000_CONNSW, connsw);
   return;
  } else {
   adapter->copper_tries = 0;
   if ((connsw & E1000_CONNSW_PHYSD) &&
       (!(connsw & E1000_CONNSW_PHY_PDN))) {
    swap_now = 1;
    connsw &= ~E1000_CONNSW_AUTOSENSE_CONF;
    wr32(E1000_CONNSW, connsw);
   }
  }
 }

 if (!swap_now)
  return;

 switch (hw->phy.media_type) {
 case 130:
  netdev_info(adapter->netdev,
   "MAS: changing media to fiber/serdes\n");
  ctrl_ext |=
   E1000_CTRL_EXT_LINK_MODE_PCIE_SERDES;
  adapter->flags |= IGB_FLAG_MEDIA_RESET;
  adapter->copper_tries = 0;
  break;
 case 128:
 case 129:
  netdev_info(adapter->netdev,
   "MAS: changing media to copper\n");
  ctrl_ext &=
   ~E1000_CTRL_EXT_LINK_MODE_PCIE_SERDES;
  adapter->flags |= IGB_FLAG_MEDIA_RESET;
  break;
 default:

  netdev_err(adapter->netdev,
   "AMS: Invalid media type found, returning\n");
  break;
 }
 wr32(E1000_CTRL_EXT, ctrl_ext);
}
