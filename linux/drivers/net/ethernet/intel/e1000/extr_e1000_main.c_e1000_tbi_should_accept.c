
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int stats_lock; int stats; struct e1000_hw hw; } ;


 scalar_t__ TBI_ACCEPT (struct e1000_hw*,int ,int ,int ,int ) ;
 int e1000_tbi_adjust_stats (struct e1000_hw*,int *,int ,int const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool e1000_tbi_should_accept(struct e1000_adapter *adapter,
        u8 status, u8 errors,
        u32 length, const u8 *data)
{
 struct e1000_hw *hw = &adapter->hw;
 u8 last_byte = *(data + length - 1);

 if (TBI_ACCEPT(hw, status, errors, length, last_byte)) {
  unsigned long irq_flags;

  spin_lock_irqsave(&adapter->stats_lock, irq_flags);
  e1000_tbi_adjust_stats(hw, &adapter->stats, length, data);
  spin_unlock_irqrestore(&adapter->stats_lock, irq_flags);

  return 1;
 }

 return 0;
}
