
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vfpf_set_q_filters_tlv {int n_mac_vlan_filters; TYPE_1__* filters; } ;
struct TYPE_2__ {int flags; } ;



__attribute__((used)) static int bnx2x_vf_filters_contain(struct vfpf_set_q_filters_tlv *filters,
        u32 flags)
{
 int i, cnt = 0;

 for (i = 0; i < filters->n_mac_vlan_filters; i++)
  if ((filters->filters[i].flags & flags) == flags)
   cnt++;

 return cnt;
}
