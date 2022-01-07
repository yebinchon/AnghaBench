
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_fl_payload {unsigned long tc_flower_cookie; } ;



__attribute__((used)) static inline bool nfp_flower_is_merge_flow(struct nfp_fl_payload *flow_pay)
{
 return flow_pay->tc_flower_cookie == (unsigned long)flow_pay;
}
