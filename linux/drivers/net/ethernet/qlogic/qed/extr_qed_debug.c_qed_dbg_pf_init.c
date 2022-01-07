
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qed_dev {TYPE_1__* firmware; } ;
struct TYPE_2__ {int * data; } ;


 int qed_dbg_set_bin_ptr (int *) ;
 int qed_dbg_user_set_bin_ptr (int *) ;

void qed_dbg_pf_init(struct qed_dev *cdev)
{
 const u8 *dbg_values;




 dbg_values = cdev->firmware->data + *(u32 *)cdev->firmware->data;
 qed_dbg_set_bin_ptr((u8 *)dbg_values);
 qed_dbg_user_set_bin_ptr((u8 *)dbg_values);
}
