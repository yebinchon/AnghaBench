
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {struct b43legacy_dfsentry* dfsentry; } ;
struct b43legacy_txstatus_log {int end; int lock; struct b43legacy_txstatus* log; } ;
struct b43legacy_txstatus {int dummy; } ;
struct b43legacy_dfsentry {struct b43legacy_txstatus_log txstatlog; } ;


 int B43legacy_NR_LOGGED_TXSTATUS ;
 int B43legacy_WARN_ON (int) ;
 int irqs_disabled () ;
 int memcpy (struct b43legacy_txstatus*,struct b43legacy_txstatus const*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void b43legacy_debugfs_log_txstat(struct b43legacy_wldev *dev,
       const struct b43legacy_txstatus *status)
{
 struct b43legacy_dfsentry *e = dev->dfsentry;
 struct b43legacy_txstatus_log *log;
 struct b43legacy_txstatus *cur;
 int i;

 if (!e)
  return;
 log = &e->txstatlog;
 B43legacy_WARN_ON(!irqs_disabled());
 spin_lock(&log->lock);
 i = log->end + 1;
 if (i == B43legacy_NR_LOGGED_TXSTATUS)
  i = 0;
 log->end = i;
 cur = &(log->log[i]);
 memcpy(cur, status, sizeof(*cur));
 spin_unlock(&log->lock);
}
