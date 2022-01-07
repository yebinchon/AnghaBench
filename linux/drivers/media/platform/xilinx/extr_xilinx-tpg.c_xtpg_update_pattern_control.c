
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct xtpg_device {TYPE_1__ ctrl_handler; } ;


 int __xtpg_update_pattern_control (struct xtpg_device*,int,int) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;

__attribute__((used)) static void xtpg_update_pattern_control(struct xtpg_device *xtpg,
     bool passthrough, bool pattern)
{
 mutex_lock(xtpg->ctrl_handler.lock);
 __xtpg_update_pattern_control(xtpg, passthrough, pattern);
 mutex_unlock(xtpg->ctrl_handler.lock);
}
