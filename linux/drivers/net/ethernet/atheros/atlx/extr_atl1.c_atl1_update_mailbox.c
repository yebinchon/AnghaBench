
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {scalar_t__ hw_addr; } ;
struct TYPE_7__ {int next_to_clean; } ;
struct TYPE_6__ {int next_to_use; } ;
struct TYPE_5__ {int next_to_use; } ;
struct atl1_adapter {int mb_lock; TYPE_4__ hw; TYPE_3__ rrd_ring; TYPE_2__ rfd_ring; TYPE_1__ tpd_ring; } ;


 int MB_RFD_PROD_INDX_MASK ;
 int MB_RFD_PROD_INDX_SHIFT ;
 int MB_RRD_CONS_INDX_MASK ;
 int MB_RRD_CONS_INDX_SHIFT ;
 int MB_TPD_PROD_INDX_MASK ;
 int MB_TPD_PROD_INDX_SHIFT ;
 scalar_t__ REG_MAILBOX ;
 int atomic_read (int *) ;
 int iowrite32 (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void atl1_update_mailbox(struct atl1_adapter *adapter)
{
 unsigned long flags;
 u32 tpd_next_to_use;
 u32 rfd_next_to_use;
 u32 rrd_next_to_clean;
 u32 value;

 spin_lock_irqsave(&adapter->mb_lock, flags);

 tpd_next_to_use = atomic_read(&adapter->tpd_ring.next_to_use);
 rfd_next_to_use = atomic_read(&adapter->rfd_ring.next_to_use);
 rrd_next_to_clean = atomic_read(&adapter->rrd_ring.next_to_clean);

 value = ((rfd_next_to_use & MB_RFD_PROD_INDX_MASK) <<
  MB_RFD_PROD_INDX_SHIFT) |
  ((rrd_next_to_clean & MB_RRD_CONS_INDX_MASK) <<
  MB_RRD_CONS_INDX_SHIFT) |
  ((tpd_next_to_use & MB_TPD_PROD_INDX_MASK) <<
  MB_TPD_PROD_INDX_SHIFT);
 iowrite32(value, adapter->hw.hw_addr + REG_MAILBOX);

 spin_unlock_irqrestore(&adapter->mb_lock, flags);
}
