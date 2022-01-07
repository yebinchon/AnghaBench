
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_ethport {int link_status; TYPE_1__* bna; int (* link_cbfn ) (int ,int ) ;} ;
struct bfi_msgq_mhdr {int dummy; } ;
struct TYPE_2__ {int bnad; } ;


 int BNA_LINK_UP ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
bna_bfi_ethport_linkup_aen(struct bna_ethport *ethport,
   struct bfi_msgq_mhdr *msghdr)
{
 ethport->link_status = BNA_LINK_UP;


 ethport->link_cbfn(ethport->bna->bnad, ethport->link_status);
}
