
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int BMAC_CTRL_TYPE ;
 int BMAC_MAX_FRAME ;
 int BMAC_MIN_FRAME ;
 int BMAC_PREAMBLE_SIZE ;
 int BTXMAC_CONFIG ;
 int BTXMAC_CONFIG_ENABLE ;
 int BTXMAC_CONFIG_FCS_DISABLE ;
 int BTXMAC_STATUS_MASK ;
 int nr64_mac (int ) ;
 int nw64_mac (int ,int) ;

__attribute__((used)) static void niu_init_tx_bmac(struct niu *np, u64 min, u64 max)
{
 u64 val;

 nw64_mac(BMAC_MIN_FRAME, min);
 nw64_mac(BMAC_MAX_FRAME, max);

 nw64_mac(BTXMAC_STATUS_MASK, ~(u64)0);
 nw64_mac(BMAC_CTRL_TYPE, 0x8808);
 nw64_mac(BMAC_PREAMBLE_SIZE, 7);

 val = nr64_mac(BTXMAC_CONFIG);
 val &= ~(BTXMAC_CONFIG_FCS_DISABLE |
   BTXMAC_CONFIG_ENABLE);
 nw64_mac(BTXMAC_CONFIG, val);
}
