
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kcq_info {int * status_idx_ptr; } ;
struct cnic_dev {int dummy; } ;


 int barrier () ;
 int cnic_get_kcqes (struct cnic_dev*,struct kcq_info*) ;
 int rmb () ;
 int service_kcqes (struct cnic_dev*,int) ;

__attribute__((used)) static u32 cnic_service_bnx2x_kcq(struct cnic_dev *dev, struct kcq_info *info)
{
 u32 last_status = *info->status_idx_ptr;
 int kcqe_cnt;


 rmb();
 while ((kcqe_cnt = cnic_get_kcqes(dev, info))) {

  service_kcqes(dev, kcqe_cnt);


  barrier();

  last_status = *info->status_idx_ptr;

  rmb();
 }
 return last_status;
}
