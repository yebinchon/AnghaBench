
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int dummy; } ;
struct bnad_rx_ctrl {int rx_schedule; struct napi_struct napi; } ;
struct bnad {int dummy; } ;
struct bna_ccb {scalar_t__ ctrl; } ;


 int __napi_schedule (struct napi_struct*) ;
 scalar_t__ likely (int ) ;
 int napi_schedule_prep (struct napi_struct*) ;

__attribute__((used)) static void
bnad_netif_rx_schedule_poll(struct bnad *bnad, struct bna_ccb *ccb)
{
 struct bnad_rx_ctrl *rx_ctrl = (struct bnad_rx_ctrl *)(ccb->ctrl);
 struct napi_struct *napi = &rx_ctrl->napi;

 if (likely(napi_schedule_prep(napi))) {
  __napi_schedule(napi);
  rx_ctrl->rx_schedule++;
 }
}
