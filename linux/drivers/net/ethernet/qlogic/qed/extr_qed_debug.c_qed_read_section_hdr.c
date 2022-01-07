
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int qed_read_param (int *,char const**,char const**,int *) ;

__attribute__((used)) static u32 qed_read_section_hdr(u32 *dump_buf,
    const char **section_name,
    u32 *num_section_params)
{
 const char *param_str_val;

 return qed_read_param(dump_buf,
         section_name, &param_str_val, num_section_params);
}
