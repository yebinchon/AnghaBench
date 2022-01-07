
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;


 int * FLOWACT2STR ;
 int NUM_FLOW_ACTIONS ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,...) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

const char *parse_action(struct trace_seq *p,
    int *ids,
    unsigned int num)
{
 const char *ret = trace_seq_buffer_ptr(p);
 unsigned int i;

 for (i = 0; i < num; i++) {
  if (ids[i] < NUM_FLOW_ACTIONS)
   trace_seq_printf(p, "%s ", FLOWACT2STR[ids[i]]);
  else
   trace_seq_printf(p, "UNKNOWN ");
 }

 trace_seq_putc(p, 0);
 return ret;
}
