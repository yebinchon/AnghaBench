
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_fdir_filter {scalar_t__ dst_ip; scalar_t__ src_ip; scalar_t__ dst_port; scalar_t__ src_port; scalar_t__ flow_type; scalar_t__ ip4_proto; } ;



__attribute__((used)) static bool i40e_match_fdir_filter(struct i40e_fdir_filter *a,
       struct i40e_fdir_filter *b)
{

 if (a->dst_ip != b->dst_ip ||
     a->src_ip != b->src_ip ||
     a->dst_port != b->dst_port ||
     a->src_port != b->src_port ||
     a->flow_type != b->flow_type ||
     a->ip4_proto != b->ip4_proto)
  return 0;

 return 1;
}
