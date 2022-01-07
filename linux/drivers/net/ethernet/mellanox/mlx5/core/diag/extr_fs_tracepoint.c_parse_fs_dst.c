
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct trace_seq {int dummy; } ;
struct TYPE_2__ {int num; } ;
struct mlx5_flow_destination {int type; int tir_num; int ft_num; int ft; TYPE_1__ vport; } ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,...) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

const char *parse_fs_dst(struct trace_seq *p,
    const struct mlx5_flow_destination *dst,
    u32 counter_id)
{
 const char *ret = trace_seq_buffer_ptr(p);

 switch (dst->type) {
 case 128:
  trace_seq_printf(p, "vport=%u\n", dst->vport.num);
  break;
 case 132:
  trace_seq_printf(p, "ft=%p\n", dst->ft);
  break;
 case 131:
  trace_seq_printf(p, "ft_num=%u\n", dst->ft_num);
  break;
 case 129:
  trace_seq_printf(p, "tir=%u\n", dst->tir_num);
  break;
 case 133:
  trace_seq_printf(p, "counter_id=%u\n", counter_id);
  break;
 case 130:
  trace_seq_printf(p, "port\n");
  break;
 }

 trace_seq_putc(p, 0);
 return ret;
}
