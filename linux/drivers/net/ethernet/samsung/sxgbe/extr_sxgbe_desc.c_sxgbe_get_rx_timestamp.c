
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sxgbe_rx_ctxt_desc {int tstamp_lo; scalar_t__ tstamp_hi; } ;



__attribute__((used)) static u64 sxgbe_get_rx_timestamp(struct sxgbe_rx_ctxt_desc *p)
{
 u64 ns;

 ns = p->tstamp_lo;
 ns |= ((u64)p->tstamp_hi) << 32;

 return ns;
}
