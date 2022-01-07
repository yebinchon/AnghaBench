
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct be_nic_res_desc {int dummy; } ;


 struct be_nic_res_desc* be_get_nic_desc (int *,int ,int,int ) ;

__attribute__((used)) static struct be_nic_res_desc *be_get_vft_desc(u8 *buf, u32 desc_count,
            u8 pf_num)
{
 return be_get_nic_desc(buf, desc_count, 1, pf_num);
}
