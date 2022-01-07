
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef scalar_t__ u32 ;
struct ehea_mr {unsigned long handle; scalar_t__ lkey; } ;


 int H_REGISTER_SMR ;
 int PLPAR_HCALL9_BUFSIZE ;
 unsigned long long ehea_plpar_hcall9 (int ,unsigned long*,unsigned long long const,unsigned long long const,unsigned long long const,unsigned long long,scalar_t__ const,int ,int ,int ,int ) ;

u64 ehea_h_register_smr(const u64 adapter_handle, const u64 orig_mr_handle,
   const u64 vaddr_in, const u32 access_ctrl, const u32 pd,
   struct ehea_mr *mr)
{
 u64 hret;
 unsigned long outs[PLPAR_HCALL9_BUFSIZE];

 hret = ehea_plpar_hcall9(H_REGISTER_SMR,
     outs,
     adapter_handle ,
     orig_mr_handle,
     vaddr_in,
     (((u64)access_ctrl) << 32ULL),
     pd,
     0, 0, 0, 0);

 mr->handle = outs[0];
 mr->lkey = (u32)outs[2];

 return hret;
}
