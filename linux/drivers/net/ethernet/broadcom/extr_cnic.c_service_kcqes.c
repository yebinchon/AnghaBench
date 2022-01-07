
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct cnic_ulp_ops {int (* indicate_kcqes ) (int ,TYPE_1__**,int) ;} ;
struct cnic_local {TYPE_1__** completed_kcq; int * ulp_handle; int * ulp_ops; } ;
struct cnic_dev {int netdev; struct cnic_local* cnic_priv; } ;
struct TYPE_2__ {scalar_t__ kcqe_op_flag; } ;


 int CNIC_ULP_FCOE ;
 int CNIC_ULP_ISCSI ;
 int CNIC_ULP_L4 ;
 int CNIC_ULP_RDMA ;
 int DRV_CTL_RET_L5_SPQ_CREDIT_CMD ;
 scalar_t__ KCQE_FLAGS_LAYER_MASK_L2 ;
 scalar_t__ KCQE_FLAGS_LAYER_MASK_L4 ;
 scalar_t__ KCQE_FLAGS_LAYER_MASK_L5_FCOE ;
 scalar_t__ KCQE_FLAGS_LAYER_MASK_L5_ISCSI ;
 scalar_t__ KCQE_FLAGS_LAYER_MASK_L5_RDMA ;
 scalar_t__ KCQE_RAMROD_COMPLETION ;
 scalar_t__ cnic_get_kcqe_layer_mask (scalar_t__) ;
 int cnic_spq_completion (struct cnic_dev*,int ,int) ;
 scalar_t__ likely (struct cnic_ulp_ops*) ;
 int netdev_err (int ,char*,scalar_t__) ;
 struct cnic_ulp_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (int ,TYPE_1__**,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void service_kcqes(struct cnic_dev *dev, int num_cqes)
{
 struct cnic_local *cp = dev->cnic_priv;
 int i, j, comp = 0;

 i = 0;
 j = 1;
 while (num_cqes) {
  struct cnic_ulp_ops *ulp_ops;
  int ulp_type;
  u32 kcqe_op_flag = cp->completed_kcq[i]->kcqe_op_flag;
  u32 kcqe_layer = cnic_get_kcqe_layer_mask(kcqe_op_flag);

  if (unlikely(kcqe_op_flag & KCQE_RAMROD_COMPLETION))
   comp++;

  while (j < num_cqes) {
   u32 next_op = cp->completed_kcq[i + j]->kcqe_op_flag;

   if (cnic_get_kcqe_layer_mask(next_op) != kcqe_layer)
    break;

   if (unlikely(next_op & KCQE_RAMROD_COMPLETION))
    comp++;
   j++;
  }

  if (kcqe_layer == KCQE_FLAGS_LAYER_MASK_L5_RDMA)
   ulp_type = CNIC_ULP_RDMA;
  else if (kcqe_layer == KCQE_FLAGS_LAYER_MASK_L5_ISCSI)
   ulp_type = CNIC_ULP_ISCSI;
  else if (kcqe_layer == KCQE_FLAGS_LAYER_MASK_L5_FCOE)
   ulp_type = CNIC_ULP_FCOE;
  else if (kcqe_layer == KCQE_FLAGS_LAYER_MASK_L4)
   ulp_type = CNIC_ULP_L4;
  else if (kcqe_layer == KCQE_FLAGS_LAYER_MASK_L2)
   goto end;
  else {
   netdev_err(dev->netdev, "Unknown type of KCQE(0x%x)\n",
       kcqe_op_flag);
   goto end;
  }

  rcu_read_lock();
  ulp_ops = rcu_dereference(cp->ulp_ops[ulp_type]);
  if (likely(ulp_ops)) {
   ulp_ops->indicate_kcqes(cp->ulp_handle[ulp_type],
        cp->completed_kcq + i, j);
  }
  rcu_read_unlock();
end:
  num_cqes -= j;
  i += j;
  j = 1;
 }
 if (unlikely(comp))
  cnic_spq_completion(dev, DRV_CTL_RET_L5_SPQ_CREDIT_CMD, comp);
}
