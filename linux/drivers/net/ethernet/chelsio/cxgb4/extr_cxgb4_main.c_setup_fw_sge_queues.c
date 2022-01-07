
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ abs_id; } ;
struct sge {TYPE_1__ fw_evtq; TYPE_1__ intrq; int egr_sz; int txq_maperr; int starving_fl; } ;
struct adapter {int flags; int msi_idx; int * port; struct sge sge; } ;


 int CXGB4_USING_MSIX ;
 int bitmap_zero (int ,int ) ;
 int * fwevtq_handler ;
 int t4_sge_alloc_rxq (struct adapter*,TYPE_1__*,int,int ,int,int *,int *,int *,int) ;

__attribute__((used)) static int setup_fw_sge_queues(struct adapter *adap)
{
 struct sge *s = &adap->sge;
 int err = 0;

 bitmap_zero(s->starving_fl, s->egr_sz);
 bitmap_zero(s->txq_maperr, s->egr_sz);

 if (adap->flags & CXGB4_USING_MSIX)
  adap->msi_idx = 1;
 else {
  err = t4_sge_alloc_rxq(adap, &s->intrq, 0, adap->port[0], 0,
           ((void*)0), ((void*)0), ((void*)0), -1);
  if (err)
   return err;
  adap->msi_idx = -((int)s->intrq.abs_id + 1);
 }

 err = t4_sge_alloc_rxq(adap, &s->fw_evtq, 1, adap->port[0],
          adap->msi_idx, ((void*)0), fwevtq_handler, ((void*)0), -1);
 return err;
}
