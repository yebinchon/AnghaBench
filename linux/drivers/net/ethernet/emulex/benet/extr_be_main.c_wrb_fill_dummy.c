
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_eth_wrb {scalar_t__ rsvd0; scalar_t__ frag_len; scalar_t__ frag_pa_lo; scalar_t__ frag_pa_hi; } ;



__attribute__((used)) static inline void wrb_fill_dummy(struct be_eth_wrb *wrb)
{
 wrb->frag_pa_hi = 0;
 wrb->frag_pa_lo = 0;
 wrb->frag_len = 0;
 wrb->rsvd0 = 0;
}
