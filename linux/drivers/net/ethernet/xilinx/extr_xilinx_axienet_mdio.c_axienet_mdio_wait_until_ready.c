
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct axienet_local {int dummy; } ;


 int XAE_MDIO_MCR_READY_MASK ;
 int axinet_ior_read_mcr ;
 int readx_poll_timeout (int ,struct axienet_local*,int,int,int,int) ;

__attribute__((used)) static int axienet_mdio_wait_until_ready(struct axienet_local *lp)
{
 u32 val;

 return readx_poll_timeout(axinet_ior_read_mcr, lp,
      val, val & XAE_MDIO_MCR_READY_MASK,
      1, 20000);
}
