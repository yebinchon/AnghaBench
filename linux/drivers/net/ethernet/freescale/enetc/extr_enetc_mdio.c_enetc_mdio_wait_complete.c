
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct enetc_hw {int dummy; } ;


 int MDIO_CFG ;
 int MDIO_CFG_BSY ;
 int TIMEOUT ;
 int enetc_mdio_rd_reg ;
 int readx_poll_timeout (int ,int ,int,int,int,int) ;

__attribute__((used)) static int enetc_mdio_wait_complete(struct enetc_hw *hw)
{
 u32 val;

 return readx_poll_timeout(enetc_mdio_rd_reg, MDIO_CFG, val,
      !(val & MDIO_CFG_BSY), 10, 10 * TIMEOUT);
}
