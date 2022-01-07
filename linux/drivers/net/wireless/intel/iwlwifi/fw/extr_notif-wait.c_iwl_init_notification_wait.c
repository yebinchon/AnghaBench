
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_notification_wait {int (* fn ) (struct iwl_notif_wait_data*,struct iwl_rx_packet*,void*) ;int n_cmds; int triggered; int aborted; int list; int cmds; void* fn_data; } ;
struct iwl_notif_wait_data {int notif_wait_lock; int notif_waits; } ;


 int MAX_NOTIF_CMDS ;
 scalar_t__ WARN_ON (int) ;
 int list_add (int *,int *) ;
 int memcpy (int ,int const*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void
iwl_init_notification_wait(struct iwl_notif_wait_data *notif_wait,
      struct iwl_notification_wait *wait_entry,
      const u16 *cmds, int n_cmds,
      bool (*fn)(struct iwl_notif_wait_data *notif_wait,
          struct iwl_rx_packet *pkt, void *data),
      void *fn_data)
{
 if (WARN_ON(n_cmds > MAX_NOTIF_CMDS))
  n_cmds = MAX_NOTIF_CMDS;

 wait_entry->fn = fn;
 wait_entry->fn_data = fn_data;
 wait_entry->n_cmds = n_cmds;
 memcpy(wait_entry->cmds, cmds, n_cmds * sizeof(u16));
 wait_entry->triggered = 0;
 wait_entry->aborted = 0;

 spin_lock_bh(&notif_wait->notif_wait_lock);
 list_add(&wait_entry->list, &notif_wait->notif_waits);
 spin_unlock_bh(&notif_wait->notif_wait_lock);
}
