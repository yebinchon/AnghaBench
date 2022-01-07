
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_rx_ctxt_desc {int tstamp_hi; int tstamp_lo; int tstamp_available; } ;


 int pr_err (char*) ;

__attribute__((used)) static int sxgbe_get_rx_ctxt_tstamp_status(struct sxgbe_rx_ctxt_desc *p)
{
 if ((p->tstamp_hi == 0xffffffff) && (p->tstamp_lo == 0xffffffff)) {
  pr_err("Time stamp corrupted\n");
  return 0;
 }

 return p->tstamp_available;
}
