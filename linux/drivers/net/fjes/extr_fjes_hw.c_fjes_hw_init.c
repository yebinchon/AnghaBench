
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int trace_size; int trace; int lock; } ;
struct fjes_hw {scalar_t__ max_epid; scalar_t__ my_epid; TYPE_1__ hw_info; int rx_status_lock; int epstop_task; int update_zone_task; int base; } ;


 int EIO ;
 int ENXIO ;
 int FJES_DEBUG_BUFFER_SIZE ;
 int INIT_WORK (int *,int ) ;
 int REG_ICTL_MASK_ALL ;
 int fjes_hw_epstop_task ;
 scalar_t__ fjes_hw_get_max_epid (struct fjes_hw*) ;
 scalar_t__ fjes_hw_get_my_epid (struct fjes_hw*) ;
 int fjes_hw_iomap (struct fjes_hw*) ;
 int fjes_hw_reset (struct fjes_hw*) ;
 int fjes_hw_set_irqmask (struct fjes_hw*,int ,int) ;
 int fjes_hw_setup (struct fjes_hw*) ;
 int fjes_hw_update_zone_task ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int vzalloc (int ) ;

int fjes_hw_init(struct fjes_hw *hw)
{
 int ret;

 hw->base = fjes_hw_iomap(hw);
 if (!hw->base)
  return -EIO;

 ret = fjes_hw_reset(hw);
 if (ret)
  return ret;

 fjes_hw_set_irqmask(hw, REG_ICTL_MASK_ALL, 1);

 INIT_WORK(&hw->update_zone_task, fjes_hw_update_zone_task);
 INIT_WORK(&hw->epstop_task, fjes_hw_epstop_task);

 mutex_init(&hw->hw_info.lock);
 spin_lock_init(&hw->rx_status_lock);

 hw->max_epid = fjes_hw_get_max_epid(hw);
 hw->my_epid = fjes_hw_get_my_epid(hw);

 if ((hw->max_epid == 0) || (hw->my_epid >= hw->max_epid))
  return -ENXIO;

 ret = fjes_hw_setup(hw);

 hw->hw_info.trace = vzalloc(FJES_DEBUG_BUFFER_SIZE);
 hw->hw_info.trace_size = FJES_DEBUG_BUFFER_SIZE;

 return ret;
}
