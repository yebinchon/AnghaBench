
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BDX_TXF_DESC_SZ ;
 int FIFO_SIZE ;

__attribute__((used)) static inline int bdx_tx_fifo_size_to_packets(int tx_size)
{
 return (FIFO_SIZE * (1 << tx_size)) / BDX_TXF_DESC_SZ;
}
