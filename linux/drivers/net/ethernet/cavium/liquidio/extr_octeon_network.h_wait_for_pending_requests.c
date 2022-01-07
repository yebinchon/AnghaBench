
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_device {TYPE_1__* response_list; } ;
struct TYPE_2__ {int pending_req_count; } ;


 int HZ ;
 int MAX_IO_PENDING_PKT_COUNT ;
 size_t OCTEON_ORDERED_SC_LIST ;
 int atomic_read (int *) ;
 int schedule_timeout_uninterruptible (int) ;

__attribute__((used)) static inline int wait_for_pending_requests(struct octeon_device *oct)
{
 int i, pcount = 0;

 for (i = 0; i < MAX_IO_PENDING_PKT_COUNT; i++) {
  pcount = atomic_read(
      &oct->response_list[OCTEON_ORDERED_SC_LIST]
    .pending_req_count);
  if (pcount)
   schedule_timeout_uninterruptible(HZ / 10);
  else
   break;
 }

 if (pcount)
  return 1;

 return 0;
}
