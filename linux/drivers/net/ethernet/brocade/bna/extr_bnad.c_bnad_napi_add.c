
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct bnad_rx_ctrl {int napi; } ;
struct bnad {int num_rxp_per_rx; int netdev; TYPE_1__* rx_info; } ;
struct TYPE_2__ {struct bnad_rx_ctrl* rx_ctrl; } ;


 int BNAD_NAPI_POLL_QUOTA ;
 int bnad_napi_poll_rx ;
 int netif_napi_add (int ,int *,int ,int ) ;

__attribute__((used)) static void
bnad_napi_add(struct bnad *bnad, u32 rx_id)
{
 struct bnad_rx_ctrl *rx_ctrl;
 int i;


 for (i = 0; i < bnad->num_rxp_per_rx; i++) {
  rx_ctrl = &bnad->rx_info[rx_id].rx_ctrl[i];
  netif_napi_add(bnad->netdev, &rx_ctrl->napi,
          bnad_napi_poll_rx, BNAD_NAPI_POLL_QUOTA);
 }
}
