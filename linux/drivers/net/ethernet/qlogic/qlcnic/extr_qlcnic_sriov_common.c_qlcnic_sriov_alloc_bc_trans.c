
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_bc_trans {int resp_cmpl; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int init_completion (int *) ;
 struct qlcnic_bc_trans* kzalloc (int,int ) ;

__attribute__((used)) static inline int qlcnic_sriov_alloc_bc_trans(struct qlcnic_bc_trans **trans)
{
 *trans = kzalloc(sizeof(struct qlcnic_bc_trans), GFP_ATOMIC);
 if (!*trans)
  return -ENOMEM;

 init_completion(&(*trans)->resp_cmpl);
 return 0;
}
