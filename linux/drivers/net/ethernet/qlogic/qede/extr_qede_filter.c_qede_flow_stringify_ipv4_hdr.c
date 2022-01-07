
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_arfs_tuple {scalar_t__ ip_proto; int src_port; int dst_port; int dst_ipv4; int src_ipv4; } ;


 scalar_t__ IPPROTO_TCP ;
 int QEDE_FILTER_PRINT_MAX_LEN ;
 int snprintf (void*,int ,char*,char const*,int *,int,int *,int) ;

__attribute__((used)) static void qede_flow_stringify_ipv4_hdr(struct qede_arfs_tuple *t,
      void *buffer)
{
 const char *prefix = t->ip_proto == IPPROTO_TCP ? "TCP" : "UDP";

 snprintf(buffer, QEDE_FILTER_PRINT_MAX_LEN,
   "%s %pI4 (%04x) -> %pI4 (%04x)",
   prefix, &t->src_ipv4, t->src_port,
   &t->dst_ipv4, t->dst_port);
}
