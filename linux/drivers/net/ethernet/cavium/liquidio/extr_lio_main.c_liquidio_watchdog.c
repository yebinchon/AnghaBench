
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct TYPE_4__ {int vf_drv_loaded_mask; } ;
struct octeon_device {TYPE_2__ sriov_info; TYPE_1__* pci_dev; int cores_crashed; } ;
typedef int err_msg_was_printed ;
struct TYPE_3__ {int dev; } ;


 int CN23XX_SLI_SCRATCH2 ;
 int LIO_MAX_CORES ;
 int READ_ONCE (int ) ;
 int TASK_INTERRUPTIBLE ;
 int THIS_MODULE ;
 int WRITE_ONCE (int ,int) ;
 int dev_err (int *,char*,int) ;
 int disable_all_vf_links (struct octeon_device*) ;
 struct octeon_device* get_other_octeon_device (struct octeon_device*) ;
 long hweight64 (int ) ;
 int kthread_should_stop () ;
 int memset (int*,int ,int) ;
 int module_put (int ) ;
 long module_refcount (int ) ;
 int msecs_to_jiffies (int) ;
 scalar_t__ octeon_read_csr64 (struct octeon_device*,int ) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;

__attribute__((used)) static int liquidio_watchdog(void *param)
{
 bool err_msg_was_printed[LIO_MAX_CORES];
 u16 mask_of_crashed_or_stuck_cores = 0;
 bool all_vf_links_are_disabled = 0;
 struct octeon_device *oct = param;
 struct octeon_device *other_oct;




 int core;

 memset(err_msg_was_printed, 0, sizeof(err_msg_was_printed));

 while (!kthread_should_stop()) {

  set_current_state(TASK_INTERRUPTIBLE);
  schedule_timeout(msecs_to_jiffies(2000));

  mask_of_crashed_or_stuck_cores =
      (u16)octeon_read_csr64(oct, CN23XX_SLI_SCRATCH2);

  if (!mask_of_crashed_or_stuck_cores)
   continue;

  WRITE_ONCE(oct->cores_crashed, 1);
  other_oct = get_other_octeon_device(oct);
  if (other_oct)
   WRITE_ONCE(other_oct->cores_crashed, 1);

  for (core = 0; core < LIO_MAX_CORES; core++) {
   bool core_crashed_or_got_stuck;

   core_crashed_or_got_stuck =
      (mask_of_crashed_or_stuck_cores
       >> core) & 1;

   if (core_crashed_or_got_stuck &&
       !err_msg_was_printed[core]) {
    dev_err(&oct->pci_dev->dev,
     "ERROR: Octeon core %d crashed or got stuck!  See oct-fwdump for details.\n",
     core);
    err_msg_was_printed[core] = 1;
   }
  }

  if (all_vf_links_are_disabled)
   continue;

  disable_all_vf_links(oct);
  disable_all_vf_links(other_oct);
  all_vf_links_are_disabled = 1;
 }

 return 0;
}
