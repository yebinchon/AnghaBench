
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct napi_struct {int dummy; } ;
struct ionic_lif {TYPE_1__* notifyqcq; } ;
struct TYPE_4__ {struct ionic_lif* lif; } ;
struct TYPE_3__ {int flags; } ;


 int IONIC_QCQ_F_INITED ;
 int ionic_adminq_service ;
 int ionic_napi (struct napi_struct*,int,int ,int *,int *) ;
 int ionic_notifyq_clean (struct ionic_lif*,int) ;
 scalar_t__ likely (int ) ;
 int max (int,int) ;
 TYPE_2__* napi_to_cq (struct napi_struct*) ;

__attribute__((used)) static int ionic_adminq_napi(struct napi_struct *napi, int budget)
{
 struct ionic_lif *lif = napi_to_cq(napi)->lif;
 int n_work = 0;
 int a_work = 0;

 if (likely(lif->notifyqcq && lif->notifyqcq->flags & IONIC_QCQ_F_INITED))
  n_work = ionic_notifyq_clean(lif, budget);
 a_work = ionic_napi(napi, budget, ionic_adminq_service, ((void*)0), ((void*)0));

 return max(n_work, a_work);
}
