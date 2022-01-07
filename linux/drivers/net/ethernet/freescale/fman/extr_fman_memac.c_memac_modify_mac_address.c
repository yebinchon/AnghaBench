
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fman_mac {int regs; int memac_drv_param; } ;
typedef scalar_t__ enet_addr_t ;


 int EINVAL ;
 int add_addr_in_paddr (int ,int *,int ) ;
 int is_init_done (int ) ;

int memac_modify_mac_address(struct fman_mac *memac, enet_addr_t *enet_addr)
{
 if (!is_init_done(memac->memac_drv_param))
  return -EINVAL;

 add_addr_in_paddr(memac->regs, (u8 *)(*enet_addr), 0);

 return 0;
}
