
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct scif_pollepd {int events; int revents; TYPE_3__* epd; } ;
struct TYPE_4__ {int _key; int * _qproc; } ;
struct poll_wqueues {int error; TYPE_1__ pt; } ;
typedef TYPE_1__ poll_table ;
typedef int __poll_t ;
struct TYPE_5__ {int anon; } ;


 int EINTR ;
 int EPOLLERR ;
 int EPOLLHUP ;
 int MAX_SCHEDULE_TIMEOUT ;
 int __scif_pollfd (int ,TYPE_1__*,TYPE_3__*) ;
 int current ;
 int msecs_to_jiffies (long) ;
 int poll_freewait (struct poll_wqueues*) ;
 int poll_initwait (struct poll_wqueues*) ;
 int schedule_timeout_interruptible (int ) ;
 scalar_t__ signal_pending (int ) ;

int
scif_poll(struct scif_pollepd *ufds, unsigned int nfds, long timeout_msecs)
{
 struct poll_wqueues table;
 poll_table *pt;
 int i, count = 0, timed_out = timeout_msecs == 0;
 __poll_t mask;
 u64 timeout = timeout_msecs < 0 ? MAX_SCHEDULE_TIMEOUT
  : msecs_to_jiffies(timeout_msecs);

 poll_initwait(&table);
 pt = &table.pt;
 while (1) {
  for (i = 0; i < nfds; i++) {
   pt->_key = ufds[i].events | EPOLLERR | EPOLLHUP;
   mask = __scif_pollfd(ufds[i].epd->anon,
          pt, ufds[i].epd);
   mask &= ufds[i].events | EPOLLERR | EPOLLHUP;
   if (mask) {
    count++;
    pt->_qproc = ((void*)0);
   }
   ufds[i].revents = mask;
  }
  pt->_qproc = ((void*)0);
  if (!count) {
   count = table.error;
   if (signal_pending(current))
    count = -EINTR;
  }
  if (count || timed_out)
   break;

  if (!schedule_timeout_interruptible(timeout))
   timed_out = 1;
 }
 poll_freewait(&table);
 return count;
}
