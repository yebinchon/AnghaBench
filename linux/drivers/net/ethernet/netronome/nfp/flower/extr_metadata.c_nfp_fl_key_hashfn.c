
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_fl_flow_table_cmp_arg {int cookie; } ;


 int jhash2 (int *,int,int ) ;

__attribute__((used)) static u32 nfp_fl_key_hashfn(const void *data, u32 len, u32 seed)
{
 const struct nfp_fl_flow_table_cmp_arg *cmp_arg = data;

 return jhash2((u32 *)&cmp_arg->cookie,
        sizeof(cmp_arg->cookie) / sizeof(u32), seed);
}
