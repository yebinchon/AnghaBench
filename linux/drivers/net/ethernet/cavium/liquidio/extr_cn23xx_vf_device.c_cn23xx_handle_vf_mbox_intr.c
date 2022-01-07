
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct octeon_ioq_vector {int droq_index; struct octeon_device* oct_dev; } ;
struct octeon_device {TYPE_2__** mbox; } ;
struct TYPE_3__ {int work; } ;
struct TYPE_4__ {TYPE_1__ mbox_poll_wk; int mbox_int_reg; } ;


 int msecs_to_jiffies (int ) ;
 scalar_t__ octeon_mbox_read (TYPE_2__*) ;
 int readq (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int writeq (int ,int ) ;

__attribute__((used)) static void cn23xx_handle_vf_mbox_intr(struct octeon_ioq_vector *ioq_vector)
{
 struct octeon_device *oct = ioq_vector->oct_dev;
 u64 mbox_int_val;

 if (!ioq_vector->droq_index) {

  mbox_int_val = readq(oct->mbox[0]->mbox_int_reg);
  writeq(mbox_int_val, oct->mbox[0]->mbox_int_reg);
  if (octeon_mbox_read(oct->mbox[0]))
   schedule_delayed_work(&oct->mbox[0]->mbox_poll_wk.work,
           msecs_to_jiffies(0));
 }
}
