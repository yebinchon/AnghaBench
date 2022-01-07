
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int qed_dump_num_param (int *,int,char const*,int ) ;

__attribute__((used)) static u32 qed_dump_section_hdr(u32 *dump_buf,
    bool dump, const char *name, u32 num_params)
{
 return qed_dump_num_param(dump_buf, dump, name, num_params);
}
