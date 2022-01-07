
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int no_fcs; } ;


 int E1000_ADVTXD_DCMD_DEXT ;
 int E1000_ADVTXD_DCMD_IFCS ;
 int E1000_ADVTXD_DCMD_TSE ;
 int E1000_ADVTXD_DCMD_VLE ;
 int E1000_ADVTXD_DTYP_DATA ;
 int E1000_ADVTXD_MAC_TSTAMP ;
 int IGB_SET_FLAG (int,int,int) ;
 int IGB_TX_FLAGS_TSO ;
 int IGB_TX_FLAGS_TSTAMP ;
 int IGB_TX_FLAGS_VLAN ;

__attribute__((used)) static u32 igb_tx_cmd_type(struct sk_buff *skb, u32 tx_flags)
{

 u32 cmd_type = E1000_ADVTXD_DTYP_DATA |
         E1000_ADVTXD_DCMD_DEXT |
         E1000_ADVTXD_DCMD_IFCS;


 cmd_type |= IGB_SET_FLAG(tx_flags, IGB_TX_FLAGS_VLAN,
     (E1000_ADVTXD_DCMD_VLE));


 cmd_type |= IGB_SET_FLAG(tx_flags, IGB_TX_FLAGS_TSO,
     (E1000_ADVTXD_DCMD_TSE));


 cmd_type |= IGB_SET_FLAG(tx_flags, IGB_TX_FLAGS_TSTAMP,
     (E1000_ADVTXD_MAC_TSTAMP));


 cmd_type ^= IGB_SET_FLAG(skb->no_fcs, 1, E1000_ADVTXD_DCMD_IFCS);

 return cmd_type;
}
