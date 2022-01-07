
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bna_ethport {TYPE_2__* bna; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ enet; } ;


 scalar_t__ BNA_ENET_T_REGULAR ;
 int bna_bfi_ethport_admin_up (struct bna_ethport*) ;
 int bna_bfi_ethport_lpbk_up (struct bna_ethport*) ;

__attribute__((used)) static void
bna_bfi_ethport_up(struct bna_ethport *ethport)
{
 if (ethport->bna->enet.type == BNA_ENET_T_REGULAR)
  bna_bfi_ethport_admin_up(ethport);
 else
  bna_bfi_ethport_lpbk_up(ethport);
}
