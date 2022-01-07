
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct trace_seq {int dummy; } ;


 int MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_INNER_HEADERS ;
 int MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_MISC_PARAMETERS ;
 int MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS ;
 int print_lyr_2_4_hdrs (struct trace_seq*,int const*,int const*) ;
 int print_misc_parameters_hdrs (struct trace_seq*,int const*,int const*) ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

const char *parse_fs_hdrs(struct trace_seq *p,
     u8 match_criteria_enable,
     const u32 *mask_outer,
     const u32 *mask_misc,
     const u32 *mask_inner,
     const u32 *value_outer,
     const u32 *value_misc,
     const u32 *value_inner)
{
 const char *ret = trace_seq_buffer_ptr(p);

 if (match_criteria_enable &
     1 << MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS) {
  trace_seq_printf(p, "[outer] ");
  print_lyr_2_4_hdrs(p, mask_outer, value_outer);
 }

 if (match_criteria_enable &
     1 << MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_MISC_PARAMETERS) {
  trace_seq_printf(p, "[misc] ");
  print_misc_parameters_hdrs(p, mask_misc, value_misc);
 }
 if (match_criteria_enable &
     1 << MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_INNER_HEADERS) {
  trace_seq_printf(p, "[inner] ");
  print_lyr_2_4_hdrs(p, mask_inner, value_inner);
 }
 trace_seq_putc(p, 0);
 return ret;
}
