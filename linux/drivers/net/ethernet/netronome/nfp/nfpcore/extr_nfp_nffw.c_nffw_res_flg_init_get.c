
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_nffw_info_data {int * flags; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static u32 nffw_res_flg_init_get(const struct nfp_nffw_info_data *res)
{
 return (le32_to_cpu(res->flags[0]) >> 0) & 1;
}
