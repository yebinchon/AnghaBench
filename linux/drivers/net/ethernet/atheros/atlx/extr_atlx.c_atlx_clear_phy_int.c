
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atlx_adapter {int lock; int hw; } ;


 int atlx_read_phy_reg (int *,int,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void atlx_clear_phy_int(struct atlx_adapter *adapter)
{
 u16 phy_data;
 unsigned long flags;

 spin_lock_irqsave(&adapter->lock, flags);
 atlx_read_phy_reg(&adapter->hw, 19, &phy_data);
 spin_unlock_irqrestore(&adapter->lock, flags);
}
