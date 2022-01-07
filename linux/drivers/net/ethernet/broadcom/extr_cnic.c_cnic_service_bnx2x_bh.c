
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ sw_prod_idx; int io_addr; } ;
struct cnic_local {int bnx2x_igu_sb_id; TYPE_1__ kcq2; int (* arm_int ) (struct cnic_dev*,scalar_t__) ;TYPE_1__ kcq1; } ;
struct cnic_dev {int flags; int netdev; struct cnic_local* cnic_priv; } ;
struct bnx2x {int dummy; } ;


 int CNIC_F_CNIC_UP ;
 int CNIC_SUPPORTS_FCOE (struct bnx2x*) ;
 int CNIC_WR16 (struct cnic_dev*,int ,scalar_t__) ;
 int IGU_INT_ENABLE ;
 int IGU_SEG_ACCESS_DEF ;
 scalar_t__ MAX_KCQ_IDX ;
 int cnic_ack_igu_sb (struct cnic_dev*,int ,int ,scalar_t__,int ,int) ;
 scalar_t__ cnic_service_bnx2x_kcq (struct cnic_dev*,TYPE_1__*) ;
 struct bnx2x* netdev_priv (int ) ;
 int stub1 (struct cnic_dev*,scalar_t__) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void cnic_service_bnx2x_bh(unsigned long data)
{
 struct cnic_dev *dev = (struct cnic_dev *) data;
 struct cnic_local *cp = dev->cnic_priv;
 struct bnx2x *bp = netdev_priv(dev->netdev);
 u32 status_idx, new_status_idx;

 if (unlikely(!test_bit(CNIC_F_CNIC_UP, &dev->flags)))
  return;

 while (1) {
  status_idx = cnic_service_bnx2x_kcq(dev, &cp->kcq1);

  CNIC_WR16(dev, cp->kcq1.io_addr,
     cp->kcq1.sw_prod_idx + MAX_KCQ_IDX);

  if (!CNIC_SUPPORTS_FCOE(bp)) {
   cp->arm_int(dev, status_idx);
   break;
  }

  new_status_idx = cnic_service_bnx2x_kcq(dev, &cp->kcq2);

  if (new_status_idx != status_idx)
   continue;

  CNIC_WR16(dev, cp->kcq2.io_addr, cp->kcq2.sw_prod_idx +
     MAX_KCQ_IDX);

  cnic_ack_igu_sb(dev, cp->bnx2x_igu_sb_id, IGU_SEG_ACCESS_DEF,
    status_idx, IGU_INT_ENABLE, 1);

  break;
 }
}
