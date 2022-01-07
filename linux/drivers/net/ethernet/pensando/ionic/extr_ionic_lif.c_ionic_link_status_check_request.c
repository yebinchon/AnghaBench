
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_lif {int deferred; int state; } ;
struct ionic_deferred_work {int type; } ;


 int GFP_ATOMIC ;
 int IONIC_DW_TYPE_LINK_STATUS ;
 int IONIC_LIF_LINK_CHECK_REQUESTED ;
 scalar_t__ in_interrupt () ;
 int ionic_lif_deferred_enqueue (int *,struct ionic_deferred_work*) ;
 int ionic_link_status_check (struct ionic_lif*) ;
 struct ionic_deferred_work* kzalloc (int,int ) ;
 scalar_t__ test_and_set_bit (int ,int ) ;

__attribute__((used)) static void ionic_link_status_check_request(struct ionic_lif *lif)
{
 struct ionic_deferred_work *work;


 if (test_and_set_bit(IONIC_LIF_LINK_CHECK_REQUESTED, lif->state))
  return;

 if (in_interrupt()) {
  work = kzalloc(sizeof(*work), GFP_ATOMIC);
  if (!work)
   return;

  work->type = IONIC_DW_TYPE_LINK_STATUS;
  ionic_lif_deferred_enqueue(&lif->deferred, work);
 } else {
  ionic_link_status_check(lif);
 }
}
