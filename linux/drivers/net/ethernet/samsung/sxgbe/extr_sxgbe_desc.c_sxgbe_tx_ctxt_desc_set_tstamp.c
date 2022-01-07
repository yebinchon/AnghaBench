
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef void* u32 ;
struct sxgbe_tx_ctxt_desc {void* tstamp_hi; void* tstamp_lo; scalar_t__ ostc; } ;



__attribute__((used)) static void sxgbe_tx_ctxt_desc_set_tstamp(struct sxgbe_tx_ctxt_desc *p,
       u8 ostc_enable, u64 tstamp)
{
 if (ostc_enable) {
  p->ostc = ostc_enable;
  p->tstamp_lo = (u32) tstamp;
  p->tstamp_hi = (u32) (tstamp>>32);
 }
}
