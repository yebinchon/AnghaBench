
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct igb_adapter {int wvbr; int vfs_allocated_count; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (int) ;
 int IGB_STAGGERED_QUEUE_OFFSET ;
 int dev_warn (int *,char*,int) ;

__attribute__((used)) static void igb_spoof_check(struct igb_adapter *adapter)
{
 int j;

 if (!adapter->wvbr)
  return;

 for (j = 0; j < adapter->vfs_allocated_count; j++) {
  if (adapter->wvbr & BIT(j) ||
      adapter->wvbr & BIT(j + IGB_STAGGERED_QUEUE_OFFSET)) {
   dev_warn(&adapter->pdev->dev,
    "Spoof event(s) detected on VF %d\n", j);
   adapter->wvbr &=
    ~(BIT(j) |
      BIT(j + IGB_STAGGERED_QUEUE_OFFSET));
  }
 }
}
