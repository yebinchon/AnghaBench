
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mtu_comp; int mtu_comp_status; } ;
struct bnad {TYPE_1__ bnad_completions; } ;


 int BNA_CB_SUCCESS ;
 int complete (int *) ;

__attribute__((used)) static void
bnad_cb_enet_mtu_set(struct bnad *bnad)
{
 bnad->bnad_completions.mtu_comp_status = BNA_CB_SUCCESS;
 complete(&bnad->bnad_completions.mtu_comp);
}
