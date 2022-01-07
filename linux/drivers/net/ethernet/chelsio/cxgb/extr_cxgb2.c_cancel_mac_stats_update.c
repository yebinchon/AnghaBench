
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int stats_update_task; } ;


 int cancel_delayed_work (int *) ;

__attribute__((used)) static inline void cancel_mac_stats_update(struct adapter *ap)
{
 cancel_delayed_work(&ap->stats_update_task);
}
