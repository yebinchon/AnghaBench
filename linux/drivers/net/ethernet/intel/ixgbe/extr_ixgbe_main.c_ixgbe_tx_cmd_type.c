
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int no_fcs; } ;


 int IXGBE_ADVTXD_DCMD_DEXT ;
 int IXGBE_ADVTXD_DCMD_IFCS ;
 int IXGBE_ADVTXD_DCMD_TSE ;
 int IXGBE_ADVTXD_DCMD_VLE ;
 int IXGBE_ADVTXD_DTYP_DATA ;
 int IXGBE_ADVTXD_MAC_TSTAMP ;
 int IXGBE_SET_FLAG (int,int,int) ;
 int IXGBE_TX_FLAGS_HW_VLAN ;
 int IXGBE_TX_FLAGS_TSO ;
 int IXGBE_TX_FLAGS_TSTAMP ;

__attribute__((used)) static u32 ixgbe_tx_cmd_type(struct sk_buff *skb, u32 tx_flags)
{

 u32 cmd_type = IXGBE_ADVTXD_DTYP_DATA |
         IXGBE_ADVTXD_DCMD_DEXT |
         IXGBE_ADVTXD_DCMD_IFCS;


 cmd_type |= IXGBE_SET_FLAG(tx_flags, IXGBE_TX_FLAGS_HW_VLAN,
       IXGBE_ADVTXD_DCMD_VLE);


 cmd_type |= IXGBE_SET_FLAG(tx_flags, IXGBE_TX_FLAGS_TSO,
       IXGBE_ADVTXD_DCMD_TSE);


 cmd_type |= IXGBE_SET_FLAG(tx_flags, IXGBE_TX_FLAGS_TSTAMP,
       IXGBE_ADVTXD_MAC_TSTAMP);


 cmd_type ^= IXGBE_SET_FLAG(skb->no_fcs, 1, IXGBE_ADVTXD_DCMD_IFCS);

 return cmd_type;
}
