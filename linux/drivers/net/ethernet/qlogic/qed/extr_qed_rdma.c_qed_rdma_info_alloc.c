
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_rdma_info {int lock; } ;
struct qed_hwfn {struct qed_rdma_info* p_rdma_info; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct qed_rdma_info* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

int qed_rdma_info_alloc(struct qed_hwfn *p_hwfn)
{
 struct qed_rdma_info *p_rdma_info;

 p_rdma_info = kzalloc(sizeof(*p_rdma_info), GFP_KERNEL);
 if (!p_rdma_info)
  return -ENOMEM;

 spin_lock_init(&p_rdma_info->lock);

 p_hwfn->p_rdma_info = p_rdma_info;
 return 0;
}
