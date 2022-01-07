
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enet_comp; } ;
struct bnad {TYPE_1__ bnad_completions; int netdev; } ;


 int complete (int *) ;
 int netif_carrier_off (int ) ;

__attribute__((used)) static void
bnad_cb_enet_disabled(void *arg)
{
 struct bnad *bnad = (struct bnad *)arg;

 netif_carrier_off(bnad->netdev);
 complete(&bnad->bnad_completions.enet_comp);
}
