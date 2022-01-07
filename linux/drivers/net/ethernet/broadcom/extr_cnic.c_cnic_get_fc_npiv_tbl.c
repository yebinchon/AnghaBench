
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cnic_local {TYPE_1__* ethdev; } ;
struct cnic_fc_npiv_tbl {int dummy; } ;
struct cnic_dev {int netdev; int flags; struct cnic_local* cnic_priv; } ;
struct bnx2x {int dummy; } ;
struct TYPE_2__ {int (* drv_get_fc_npiv_tbl ) (int ,struct cnic_fc_npiv_tbl*) ;} ;


 int BNX2X_CHIP_IS_E2_PLUS (struct bnx2x*) ;
 int CNIC_F_CNIC_UP ;
 int EAGAIN ;
 int EINVAL ;
 struct bnx2x* netdev_priv (int ) ;
 int stub1 (int ,struct cnic_fc_npiv_tbl*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int cnic_get_fc_npiv_tbl(struct cnic_dev *dev,
    struct cnic_fc_npiv_tbl *npiv_tbl)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct bnx2x *bp = netdev_priv(dev->netdev);
 int ret;

 if (!test_bit(CNIC_F_CNIC_UP, &dev->flags))
  return -EAGAIN;

 if (!BNX2X_CHIP_IS_E2_PLUS(bp))
  return -EINVAL;

 ret = cp->ethdev->drv_get_fc_npiv_tbl(dev->netdev, npiv_tbl);
 return ret;
}
