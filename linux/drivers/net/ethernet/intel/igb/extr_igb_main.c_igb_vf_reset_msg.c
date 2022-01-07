
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {TYPE_1__* vf_data; struct e1000_hw hw; } ;
struct TYPE_2__ {unsigned char* vf_mac_addresses; int flags; } ;


 size_t BIT (size_t) ;
 int E1000_VFRE ;
 int E1000_VFTE ;
 size_t E1000_VF_RESET ;
 size_t E1000_VT_MSGTYPE_ACK ;
 size_t E1000_VT_MSGTYPE_NACK ;
 int ETH_ALEN ;
 int IGB_VF_FLAG_CTS ;
 int igb_set_vf_mac (struct igb_adapter*,size_t,unsigned char*) ;
 int igb_vf_reset (struct igb_adapter*,size_t) ;
 int igb_write_mbx (struct e1000_hw*,size_t*,int,size_t) ;
 int is_zero_ether_addr (unsigned char*) ;
 int memcpy (int *,unsigned char*,int ) ;
 size_t rd32 (int ) ;
 int wr32 (int ,size_t) ;

__attribute__((used)) static void igb_vf_reset_msg(struct igb_adapter *adapter, u32 vf)
{
 struct e1000_hw *hw = &adapter->hw;
 unsigned char *vf_mac = adapter->vf_data[vf].vf_mac_addresses;
 u32 reg, msgbuf[3];
 u8 *addr = (u8 *)(&msgbuf[1]);


 igb_vf_reset(adapter, vf);


 igb_set_vf_mac(adapter, vf, vf_mac);


 reg = rd32(E1000_VFTE);
 wr32(E1000_VFTE, reg | BIT(vf));
 reg = rd32(E1000_VFRE);
 wr32(E1000_VFRE, reg | BIT(vf));

 adapter->vf_data[vf].flags |= IGB_VF_FLAG_CTS;


 if (!is_zero_ether_addr(vf_mac)) {
  msgbuf[0] = E1000_VF_RESET | E1000_VT_MSGTYPE_ACK;
  memcpy(addr, vf_mac, ETH_ALEN);
 } else {
  msgbuf[0] = E1000_VF_RESET | E1000_VT_MSGTYPE_NACK;
 }
 igb_write_mbx(hw, msgbuf, 3, vf);
}
