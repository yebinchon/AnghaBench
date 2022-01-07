
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netvsc_device {int send_section_map; } ;


 int sync_change_bit (int ,int ) ;

__attribute__((used)) static inline void netvsc_free_send_slot(struct netvsc_device *net_device,
      u32 index)
{
 sync_change_bit(index, net_device->send_section_map);
}
