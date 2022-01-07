
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxf_desc {int dummy; } ;


 int FIFO_SIZE ;

__attribute__((used)) static inline int bdx_rx_fifo_size_to_packets(int rx_size)
{
 return (FIFO_SIZE * (1 << rx_size)) / sizeof(struct rxf_desc);
}
