
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int engine_for_debug; } ;
struct qed_dev {TYPE_1__ dbg_params; } ;



u8 qed_get_debug_engine(struct qed_dev *cdev)
{
 return cdev->dbg_params.engine_for_debug;
}
