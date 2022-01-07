
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcb_common_cb {int max_q_per_vf; int max_vfn; } ;



__attribute__((used)) static int hns_rcb_get_port_in_comm(
 struct rcb_common_cb *rcb_common, int ring_idx)
{
 return ring_idx / (rcb_common->max_q_per_vf * rcb_common->max_vfn);
}
