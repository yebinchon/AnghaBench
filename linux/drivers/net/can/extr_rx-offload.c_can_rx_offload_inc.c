
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct can_rx_offload {scalar_t__ inc; } ;



__attribute__((used)) static inline unsigned int can_rx_offload_inc(struct can_rx_offload *offload, unsigned int *val)
{
 if (offload->inc)
  return (*val)++;
 else
  return (*val)--;
}
