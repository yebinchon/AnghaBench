
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct kwqe {int dummy; } ;
struct cnic_local {scalar_t__ kwq_prod_idx; int cnic_ulp_lock; int kwq_io_addr; struct kwqe** kwq; int cnic_local_flags; } ;
struct cnic_dev {int flags; struct cnic_local* cnic_priv; } ;


 int CNIC_F_CNIC_UP ;
 int CNIC_LCL_FL_KWQ_INIT ;
 int CNIC_WR16 (struct cnic_dev*,int ,scalar_t__) ;
 int EAGAIN ;
 size_t KWQ_IDX (scalar_t__) ;
 size_t KWQ_PG (scalar_t__) ;
 scalar_t__ MAX_KWQ_IDX ;
 int clear_bit (int ,int *) ;
 scalar_t__ cnic_kwq_avail (struct cnic_local*) ;
 int memcpy (struct kwqe*,struct kwqe*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int cnic_submit_bnx2_kwqes(struct cnic_dev *dev, struct kwqe *wqes[],
      u32 num_wqes)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct kwqe *prod_qe;
 u16 prod, sw_prod, i;

 if (!test_bit(CNIC_F_CNIC_UP, &dev->flags))
  return -EAGAIN;

 spin_lock_bh(&cp->cnic_ulp_lock);
 if (num_wqes > cnic_kwq_avail(cp) &&
     !test_bit(CNIC_LCL_FL_KWQ_INIT, &cp->cnic_local_flags)) {
  spin_unlock_bh(&cp->cnic_ulp_lock);
  return -EAGAIN;
 }

 clear_bit(CNIC_LCL_FL_KWQ_INIT, &cp->cnic_local_flags);

 prod = cp->kwq_prod_idx;
 sw_prod = prod & MAX_KWQ_IDX;
 for (i = 0; i < num_wqes; i++) {
  prod_qe = &cp->kwq[KWQ_PG(sw_prod)][KWQ_IDX(sw_prod)];
  memcpy(prod_qe, wqes[i], sizeof(struct kwqe));
  prod++;
  sw_prod = prod & MAX_KWQ_IDX;
 }
 cp->kwq_prod_idx = prod;

 CNIC_WR16(dev, cp->kwq_io_addr, cp->kwq_prod_idx);

 spin_unlock_bh(&cp->cnic_ulp_lock);
 return 0;
}
