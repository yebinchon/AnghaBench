
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dummy; } ;


 int XTXMAC_SW_RST ;
 int XTXMAC_SW_RST_REG_RS ;
 int XTXMAC_SW_RST_SOFT_RST ;
 int niu_set_and_wait_clear_mac (struct niu*,int ,int,int,int,char*) ;

__attribute__((used)) static int niu_reset_tx_xmac(struct niu *np)
{
 return niu_set_and_wait_clear_mac(np, XTXMAC_SW_RST,
       (XTXMAC_SW_RST_REG_RS |
        XTXMAC_SW_RST_SOFT_RST),
       1000, 100, "XTXMAC_SW_RST");
}
