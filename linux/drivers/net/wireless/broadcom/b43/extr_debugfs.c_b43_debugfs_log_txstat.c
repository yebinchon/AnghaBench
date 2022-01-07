
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {struct b43_dfsentry* dfsentry; } ;
struct b43_txstatus_log {int end; struct b43_txstatus* log; } ;
struct b43_txstatus {int dummy; } ;
struct b43_dfsentry {struct b43_txstatus_log txstatlog; } ;


 int B43_NR_LOGGED_TXSTATUS ;
 int memcpy (struct b43_txstatus*,struct b43_txstatus const*,int) ;

void b43_debugfs_log_txstat(struct b43_wldev *dev,
       const struct b43_txstatus *status)
{
 struct b43_dfsentry *e = dev->dfsentry;
 struct b43_txstatus_log *log;
 struct b43_txstatus *cur;
 int i;

 if (!e)
  return;
 log = &e->txstatlog;
 i = log->end + 1;
 if (i == B43_NR_LOGGED_TXSTATUS)
  i = 0;
 log->end = i;
 cur = &(log->log[i]);
 memcpy(cur, status, sizeof(*cur));
}
