
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct virtnet_info {int guest_offloads; } ;


 int virtnet_set_guest_offloads (struct virtnet_info*,int ) ;

__attribute__((used)) static int virtnet_restore_guest_offloads(struct virtnet_info *vi)
{
 u64 offloads = vi->guest_offloads;

 if (!vi->guest_offloads)
  return 0;

 return virtnet_set_guest_offloads(vi, offloads);
}
