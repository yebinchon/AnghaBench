
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fman_mac {int regs; int addr; int cfg; } ;
typedef scalar_t__ enet_addr_t ;


 int EINVAL ;
 int ENET_ADDR_TO_UINT64 (scalar_t__) ;
 int is_init_done (int ) ;
 int set_mac_address (int ,int *) ;

int tgec_modify_mac_address(struct fman_mac *tgec, enet_addr_t *p_enet_addr)
{
 if (!is_init_done(tgec->cfg))
  return -EINVAL;

 tgec->addr = ENET_ADDR_TO_UINT64(*p_enet_addr);
 set_mac_address(tgec->regs, (u8 *)(*p_enet_addr));

 return 0;
}
