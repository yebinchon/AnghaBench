
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_info {int member_0; char* member_1; int member_2; int member_3; } ;
struct adapter {int dummy; } ;






 int ULP_TX_INT_CAUSE_A ;
 int t4_fatal_err (struct adapter*) ;
 scalar_t__ t4_handle_intr_status (struct adapter*,int ,struct intr_info const*) ;

__attribute__((used)) static void ulptx_intr_handler(struct adapter *adapter)
{
 static const struct intr_info ulptx_intr_info[] = {
  { 128, "ULPTX channel 3 PBL out of bounds", -1,
    0 },
  { 129, "ULPTX channel 2 PBL out of bounds", -1,
    0 },
  { 130, "ULPTX channel 1 PBL out of bounds", -1,
    0 },
  { 131, "ULPTX channel 0 PBL out of bounds", -1,
    0 },
  { 0xfffffff, "ULPTX parity error", -1, 1 },
  { 0 }
 };

 if (t4_handle_intr_status(adapter, ULP_TX_INT_CAUSE_A, ulptx_intr_info))
  t4_fatal_err(adapter);
}
