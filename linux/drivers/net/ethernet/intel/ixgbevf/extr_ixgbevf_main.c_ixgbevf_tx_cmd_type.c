
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;


 int IXGBE_ADVTXD_DCMD_DEXT ;
 int IXGBE_ADVTXD_DCMD_IFCS ;
 int IXGBE_ADVTXD_DCMD_TSE ;
 int IXGBE_ADVTXD_DCMD_VLE ;
 int IXGBE_ADVTXD_DTYP_DATA ;
 int IXGBE_TX_FLAGS_TSO ;
 int IXGBE_TX_FLAGS_VLAN ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static __le32 ixgbevf_tx_cmd_type(u32 tx_flags)
{

 __le32 cmd_type = cpu_to_le32(IXGBE_ADVTXD_DTYP_DATA |
          IXGBE_ADVTXD_DCMD_IFCS |
          IXGBE_ADVTXD_DCMD_DEXT);


 if (tx_flags & IXGBE_TX_FLAGS_VLAN)
  cmd_type |= cpu_to_le32(IXGBE_ADVTXD_DCMD_VLE);


 if (tx_flags & IXGBE_TX_FLAGS_TSO)
  cmd_type |= cpu_to_le32(IXGBE_ADVTXD_DCMD_TSE);

 return cmd_type;
}
