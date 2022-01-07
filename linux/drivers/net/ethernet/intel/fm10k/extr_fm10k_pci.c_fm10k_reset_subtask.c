
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fm10k_intfc {TYPE_1__* pdev; int netdev; int flags; } ;
struct TYPE_2__ {int dev; } ;


 int FM10K_FLAG_RESET_REQUESTED ;
 int dev_err (int *,char*,int) ;
 int fm10k_handle_reset (struct fm10k_intfc*) ;
 int fm10k_prepare_for_reset (struct fm10k_intfc*) ;
 int netdev_err (int ,char*) ;
 int test_and_clear_bit (int ,int ) ;

__attribute__((used)) static void fm10k_reset_subtask(struct fm10k_intfc *interface)
{
 int err;

 if (!test_and_clear_bit(FM10K_FLAG_RESET_REQUESTED,
    interface->flags))
  return;
 if (!fm10k_prepare_for_reset(interface))
  return;

 netdev_err(interface->netdev, "Reset interface\n");

 err = fm10k_handle_reset(interface);
 if (err)
  dev_err(&interface->pdev->dev,
   "fm10k_handle_reset failed: %d\n", err);
}
