
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct niu {int port; } ;


 int ESR2_TI_PLL_RX_CFG_H (unsigned long) ;
 int ESR2_TI_PLL_RX_CFG_L (unsigned long) ;
 int NIU_ESR2_DEV_ADDR ;
 int mdio_write (struct niu*,int ,int ,int ,int) ;

__attribute__((used)) static int esr2_set_rx_cfg(struct niu *np, unsigned long channel, u32 val)
{
 int err;

 err = mdio_write(np, np->port, NIU_ESR2_DEV_ADDR,
    ESR2_TI_PLL_RX_CFG_L(channel),
    val & 0xffff);
 if (!err)
  err = mdio_write(np, np->port, NIU_ESR2_DEV_ADDR,
     ESR2_TI_PLL_RX_CFG_H(channel),
     val >> 16);
 return err;
}
