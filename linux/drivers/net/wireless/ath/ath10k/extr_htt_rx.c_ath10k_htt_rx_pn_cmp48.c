
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union htt_rx_pn_t {int pn48; } ;



__attribute__((used)) static bool ath10k_htt_rx_pn_cmp48(union htt_rx_pn_t *new_pn,
       union htt_rx_pn_t *old_pn)
{
 return ((new_pn->pn48 & 0xffffffffffffULL) <=
  (old_pn->pn48 & 0xffffffffffffULL));
}
