
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct can_rx_offload {scalar_t__ inc; } ;



__attribute__((used)) static inline bool can_rx_offload_le(struct can_rx_offload *offload, unsigned int a, unsigned int b)
{
 if (offload->inc)
  return a <= b;
 else
  return a >= b;
}
