
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_bc_hdr {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct qlcnic_bc_hdr* kcalloc (int ,int,int ) ;

__attribute__((used)) static inline int qlcnic_sriov_alloc_bc_msg(struct qlcnic_bc_hdr **hdr,
         u32 size)
{
 *hdr = kcalloc(size, sizeof(struct qlcnic_bc_hdr), GFP_ATOMIC);
 if (!*hdr)
  return -ENOMEM;

 return 0;
}
