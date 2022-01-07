
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qed_dev {int dummy; } ;


 int EINVAL ;
 int qed_configure_max_vf_rate (struct qed_dev*,int,scalar_t__) ;
 int qed_iov_configure_min_tx_rate (struct qed_dev*,int,scalar_t__) ;

__attribute__((used)) static int qed_set_vf_rate(struct qed_dev *cdev,
      int vfid, u32 min_rate, u32 max_rate)
{
 int rc_min = 0, rc_max = 0;

 if (max_rate)
  rc_max = qed_configure_max_vf_rate(cdev, vfid, max_rate);

 if (min_rate)
  rc_min = qed_iov_configure_min_tx_rate(cdev, vfid, min_rate);

 if (rc_max | rc_min)
  return -EINVAL;

 return 0;
}
