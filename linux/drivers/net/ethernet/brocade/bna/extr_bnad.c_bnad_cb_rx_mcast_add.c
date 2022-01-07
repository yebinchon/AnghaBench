
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mcast_comp; int mcast_comp_status; } ;
struct bnad {TYPE_1__ bnad_completions; } ;
struct bna_rx {int dummy; } ;


 int BNA_CB_SUCCESS ;
 int complete (int *) ;

__attribute__((used)) static void
bnad_cb_rx_mcast_add(struct bnad *bnad, struct bna_rx *rx)
{
 bnad->bnad_completions.mcast_comp_status = BNA_CB_SUCCESS;
 complete(&bnad->bnad_completions.mcast_comp);
}
