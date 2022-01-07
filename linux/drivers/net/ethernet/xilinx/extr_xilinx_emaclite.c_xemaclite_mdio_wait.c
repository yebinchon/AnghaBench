
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_local {scalar_t__ base_addr; } ;


 int XEL_MDIOCTRL_MDIOSTS_MASK ;
 scalar_t__ XEL_MDIOCTRL_OFFSET ;
 int readx_poll_timeout (int ,scalar_t__,int,int,int,int) ;
 int xemaclite_readl ;

__attribute__((used)) static int xemaclite_mdio_wait(struct net_local *lp)
{
 u32 val;




 return readx_poll_timeout(xemaclite_readl,
      lp->base_addr + XEL_MDIOCTRL_OFFSET,
      val, !(val & XEL_MDIOCTRL_MDIOSTS_MASK),
      1000, 20000);
}
