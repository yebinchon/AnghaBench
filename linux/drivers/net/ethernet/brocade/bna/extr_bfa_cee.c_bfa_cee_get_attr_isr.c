
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_cee_attr {int dummy; } ;
struct TYPE_4__ {int get_attr_cbarg; int (* get_attr_cbfn ) (int ,int) ;} ;
struct TYPE_3__ {int kva; } ;
struct bfa_cee {int get_attr_status; int get_attr_pending; TYPE_2__ cbfn; int attr; TYPE_1__ attr_dma; } ;
typedef enum bfa_status { ____Placeholder_bfa_status } bfa_status ;


 int BFA_STATUS_OK ;
 int bfa_cee_format_cee_cfg (int ) ;
 int memcpy (int ,int ,int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static void
bfa_cee_get_attr_isr(struct bfa_cee *cee, enum bfa_status status)
{
 cee->get_attr_status = status;
 if (status == BFA_STATUS_OK) {
  memcpy(cee->attr, cee->attr_dma.kva,
      sizeof(struct bfa_cee_attr));
  bfa_cee_format_cee_cfg(cee->attr);
 }
 cee->get_attr_pending = 0;
 if (cee->cbfn.get_attr_cbfn)
  cee->cbfn.get_attr_cbfn(cee->cbfn.get_attr_cbarg, status);
}
