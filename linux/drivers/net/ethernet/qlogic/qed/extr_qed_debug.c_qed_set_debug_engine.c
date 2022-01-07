
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int engine_for_debug; } ;
struct qed_dev {TYPE_1__ dbg_params; } ;


 int DP_VERBOSE (struct qed_dev*,int ,char*,int) ;
 int QED_MSG_DEBUG ;

void qed_set_debug_engine(struct qed_dev *cdev, int engine_number)
{
 DP_VERBOSE(cdev, QED_MSG_DEBUG, "set debug engine to %d\n",
     engine_number);
 cdev->dbg_params.engine_for_debug = engine_number;
}
