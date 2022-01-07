
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int __le64 ;


 int ICE_TXD_QW1_CMD_S ;
 int ICE_TXD_QW1_L2TAG1_S ;
 int ICE_TXD_QW1_OFFSET_S ;
 int ICE_TXD_QW1_TX_BUF_SZ_S ;
 int ICE_TX_DESC_DTYPE_DATA ;
 int cpu_to_le64 (int) ;

__attribute__((used)) static __le64
build_ctob(u64 td_cmd, u64 td_offset, unsigned int size, u64 td_tag)
{
 return cpu_to_le64(ICE_TX_DESC_DTYPE_DATA |
      (td_cmd << ICE_TXD_QW1_CMD_S) |
      (td_offset << ICE_TXD_QW1_OFFSET_S) |
      ((u64)size << ICE_TXD_QW1_TX_BUF_SZ_S) |
      (td_tag << ICE_TXD_QW1_L2TAG1_S));
}
