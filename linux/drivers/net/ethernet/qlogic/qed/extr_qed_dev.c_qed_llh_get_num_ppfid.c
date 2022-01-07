
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qed_dev {TYPE_1__* p_llh_info; } ;
struct TYPE_2__ {int num_ppfid; } ;



u8 qed_llh_get_num_ppfid(struct qed_dev *cdev)
{
 return cdev->p_llh_info->num_ppfid;
}
