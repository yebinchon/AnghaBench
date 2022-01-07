
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* process_activate_IRQ_rcvd ) () ;} ;


 int HZ ;
 int XPC_HB_CHECK_CPU ;
 int complete (int *) ;
 int cpumask_of (int ) ;
 int current ;
 int dev_dbg (int ,char*,...) ;
 scalar_t__ jiffies ;
 int set_cpus_allowed_ptr (int ,int ) ;
 int stub1 () ;
 scalar_t__ time_is_before_eq_jiffies (scalar_t__) ;
 int wait_event_interruptible (int ,int) ;
 scalar_t__ xpc_activate_IRQ_rcvd ;
 int xpc_activate_IRQ_wq ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_check_remote_hb () ;
 scalar_t__ xpc_exiting ;
 int xpc_hb_check_interval ;
 scalar_t__ xpc_hb_check_timeout ;
 int xpc_hb_checker_exited ;
 int xpc_part ;
 int xpc_start_hb_beater () ;
 int xpc_stop_hb_beater () ;

__attribute__((used)) static int
xpc_hb_checker(void *ignore)
{
 int force_IRQ = 0;



 set_cpus_allowed_ptr(current, cpumask_of(XPC_HB_CHECK_CPU));


 xpc_hb_check_timeout = jiffies + (xpc_hb_check_interval * HZ);
 xpc_start_hb_beater();

 while (!xpc_exiting) {

  dev_dbg(xpc_part, "woke up with %d ticks rem; %d IRQs have "
   "been received\n",
   (int)(xpc_hb_check_timeout - jiffies),
   xpc_activate_IRQ_rcvd);


  if (time_is_before_eq_jiffies(xpc_hb_check_timeout)) {
   xpc_hb_check_timeout = jiffies +
       (xpc_hb_check_interval * HZ);

   dev_dbg(xpc_part, "checking remote heartbeats\n");
   xpc_check_remote_hb();
  }


  if (xpc_activate_IRQ_rcvd > 0 || force_IRQ != 0) {
   force_IRQ = 0;
   dev_dbg(xpc_part, "processing activate IRQs "
    "received\n");
   xpc_arch_ops.process_activate_IRQ_rcvd();
  }


  (void)wait_event_interruptible(xpc_activate_IRQ_wq,
            (time_is_before_eq_jiffies(
      xpc_hb_check_timeout) ||
      xpc_activate_IRQ_rcvd > 0 ||
      xpc_exiting));
 }

 xpc_stop_hb_beater();

 dev_dbg(xpc_part, "heartbeat checker is exiting\n");


 complete(&xpc_hb_checker_exited);
 return 0;
}
