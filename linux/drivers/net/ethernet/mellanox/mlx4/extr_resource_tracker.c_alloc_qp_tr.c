
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct res_common {int res_id; int state; } ;
struct res_qp {int local_qpn; struct res_common com; int ref_count; int mcg_spl; int mcg_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RES_QP_RESERVED ;
 int atomic_set (int *,int ) ;
 struct res_qp* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct res_common *alloc_qp_tr(int id)
{
 struct res_qp *ret;

 ret = kzalloc(sizeof(*ret), GFP_KERNEL);
 if (!ret)
  return ((void*)0);

 ret->com.res_id = id;
 ret->com.state = RES_QP_RESERVED;
 ret->local_qpn = id;
 INIT_LIST_HEAD(&ret->mcg_list);
 spin_lock_init(&ret->mcg_spl);
 atomic_set(&ret->ref_count, 0);

 return &ret->com;
}
