
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int __le64 ;


 int I40E_TXD_QW1_CMD_SHIFT ;
 int I40E_TXD_QW1_L2TAG1_SHIFT ;
 int I40E_TXD_QW1_OFFSET_SHIFT ;
 int I40E_TXD_QW1_TX_BUF_SZ_SHIFT ;
 int I40E_TX_DESC_DTYPE_DATA ;
 int cpu_to_le64 (int) ;

__attribute__((used)) static inline __le64 build_ctob(u32 td_cmd, u32 td_offset, unsigned int size,
    u32 td_tag)
{
 return cpu_to_le64(I40E_TX_DESC_DTYPE_DATA |
      ((u64)td_cmd << I40E_TXD_QW1_CMD_SHIFT) |
      ((u64)td_offset << I40E_TXD_QW1_OFFSET_SHIFT) |
      ((u64)size << I40E_TXD_QW1_TX_BUF_SZ_SHIFT) |
      ((u64)td_tag << I40E_TXD_QW1_L2TAG1_SHIFT));
}
