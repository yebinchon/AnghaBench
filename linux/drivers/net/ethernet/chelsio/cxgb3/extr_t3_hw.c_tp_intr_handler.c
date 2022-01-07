
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intr_info {int member_0; char* member_1; int member_2; int member_3; } ;
struct TYPE_2__ {scalar_t__ rev; } ;
struct adapter {TYPE_1__ params; } ;


 int A_TP_INT_CAUSE ;


 scalar_t__ T3_REV_C ;
 int t3_fatal_err (struct adapter*) ;
 scalar_t__ t3_handle_intr_status (struct adapter*,int ,int,struct intr_info const*,int *) ;

__attribute__((used)) static void tp_intr_handler(struct adapter *adapter)
{
 static const struct intr_info tp_intr_info[] = {
  {0xffffff, "TP parity error", -1, 1},
  {0x1000000, "TP out of Rx pages", -1, 1},
  {0x2000000, "TP out of Tx pages", -1, 1},
  {0}
 };

 static const struct intr_info tp_intr_info_t3c[] = {
  {0x1fffffff, "TP parity error", -1, 1},
  {129, "TP out of Rx pages", -1, 1},
  {128, "TP out of Tx pages", -1, 1},
  {0}
 };

 if (t3_handle_intr_status(adapter, A_TP_INT_CAUSE, 0xffffffff,
      adapter->params.rev < T3_REV_C ?
      tp_intr_info : tp_intr_info_t3c, ((void*)0)))
  t3_fatal_err(adapter);
}
