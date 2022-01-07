
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_rxp; scalar_t__ fw_query_complete; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct bna {TYPE_2__ ioceth; } ;


 int BNA_CB_FAIL ;
 int BNA_CB_SUCCESS ;

int
bna_num_rxp_set(struct bna *bna, int num_rxp)
{
 if (bna->ioceth.attr.fw_query_complete &&
  (num_rxp <= bna->ioceth.attr.num_rxp)) {
  bna->ioceth.attr.num_rxp = num_rxp;
  return BNA_CB_SUCCESS;
 }

 return BNA_CB_FAIL;
}
