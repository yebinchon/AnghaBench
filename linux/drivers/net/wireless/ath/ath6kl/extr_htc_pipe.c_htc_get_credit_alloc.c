
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {TYPE_1__* txcredit_alloc; } ;
struct htc_target {TYPE_2__ pipe; } ;
struct TYPE_3__ {scalar_t__ service_id; scalar_t__ credit_alloc; } ;


 int ATH6KL_DBG_HTC ;
 int ENDPOINT_MAX ;
 int ath6kl_dbg (int ,char*,scalar_t__) ;

__attribute__((used)) static u8 htc_get_credit_alloc(struct htc_target *target, u16 service_id)
{
 u8 allocation = 0;
 int i;

 for (i = 0; i < ENDPOINT_MAX; i++) {
  if (target->pipe.txcredit_alloc[i].service_id == service_id)
   allocation =
    target->pipe.txcredit_alloc[i].credit_alloc;
 }

 if (allocation == 0) {
  ath6kl_dbg(ATH6KL_DBG_HTC,
      "HTC Service TX : 0x%2.2X : allocation is zero!\n",
      service_id);
 }

 return allocation;
}
