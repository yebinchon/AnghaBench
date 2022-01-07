
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ionic_lif {TYPE_1__* adminqcq; TYPE_1__* notifyqcq; int state; } ;
struct TYPE_2__ {int napi; } ;


 int IONIC_LIF_INITED ;
 int clear_bit (int ,int ) ;
 int ionic_lif_qcq_deinit (struct ionic_lif*,TYPE_1__*) ;
 int ionic_lif_reset (struct ionic_lif*) ;
 int ionic_lif_rss_deinit (struct ionic_lif*) ;
 int ionic_rx_filters_deinit (struct ionic_lif*) ;
 int napi_disable (int *) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static void ionic_lif_deinit(struct ionic_lif *lif)
{
 if (!test_bit(IONIC_LIF_INITED, lif->state))
  return;

 clear_bit(IONIC_LIF_INITED, lif->state);

 ionic_rx_filters_deinit(lif);
 ionic_lif_rss_deinit(lif);

 napi_disable(&lif->adminqcq->napi);
 ionic_lif_qcq_deinit(lif, lif->notifyqcq);
 ionic_lif_qcq_deinit(lif, lif->adminqcq);

 ionic_lif_reset(lif);
}
