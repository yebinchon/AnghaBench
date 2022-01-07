
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int sw_prod_idx; int io_addr; scalar_t__* status_idx_ptr; } ;
struct cnic_local {TYPE_1__ kcq1; int * kwq_con_idx_ptr; int kwq_con_idx; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int CNIC_WR16 (struct cnic_dev*,int ,int ) ;
 int barrier () ;
 int cnic_chk_pkt_rings (struct cnic_local*) ;
 int cnic_get_kcqes (struct cnic_dev*,TYPE_1__*) ;
 int rmb () ;
 int service_kcqes (struct cnic_dev*,int) ;

__attribute__((used)) static u32 cnic_service_bnx2_queues(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 u32 status_idx = (u16) *cp->kcq1.status_idx_ptr;
 int kcqe_cnt;


 rmb();
 cp->kwq_con_idx = *cp->kwq_con_idx_ptr;

 while ((kcqe_cnt = cnic_get_kcqes(dev, &cp->kcq1))) {

  service_kcqes(dev, kcqe_cnt);


  barrier();
  status_idx = (u16) *cp->kcq1.status_idx_ptr;

  rmb();
  cp->kwq_con_idx = *cp->kwq_con_idx_ptr;
 }

 CNIC_WR16(dev, cp->kcq1.io_addr, cp->kcq1.sw_prod_idx);

 cnic_chk_pkt_rings(cp);

 return status_idx;
}
