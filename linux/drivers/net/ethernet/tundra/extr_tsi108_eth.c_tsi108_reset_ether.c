
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi108_prv_data {int dummy; } ;


 int TSI108_EC_PORTCTRL ;
 int TSI108_EC_PORTCTRL_STATRST ;
 int TSI108_EC_RXCFG ;
 int TSI108_EC_RXCFG_RST ;
 int TSI108_EC_TXCFG ;
 int TSI108_EC_TXCFG_RST ;
 int TSI108_MAC_CFG1 ;
 int TSI108_MAC_CFG1_SOFTRST ;
 int TSI108_MAC_MII_MGMT_CFG ;
 int TSI108_MAC_MII_MGMT_CLK ;
 int TSI108_MAC_MII_MGMT_RST ;
 int TSI_READ (int ) ;
 int TSI_WRITE (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void tsi108_reset_ether(struct tsi108_prv_data * data)
{
 TSI_WRITE(TSI108_MAC_CFG1, TSI108_MAC_CFG1_SOFTRST);
 udelay(100);
 TSI_WRITE(TSI108_MAC_CFG1, 0);

 TSI_WRITE(TSI108_EC_PORTCTRL, TSI108_EC_PORTCTRL_STATRST);
 udelay(100);
 TSI_WRITE(TSI108_EC_PORTCTRL,
        TSI_READ(TSI108_EC_PORTCTRL) &
        ~TSI108_EC_PORTCTRL_STATRST);

 TSI_WRITE(TSI108_EC_TXCFG, TSI108_EC_TXCFG_RST);
 udelay(100);
 TSI_WRITE(TSI108_EC_TXCFG,
        TSI_READ(TSI108_EC_TXCFG) &
        ~TSI108_EC_TXCFG_RST);

 TSI_WRITE(TSI108_EC_RXCFG, TSI108_EC_RXCFG_RST);
 udelay(100);
 TSI_WRITE(TSI108_EC_RXCFG,
        TSI_READ(TSI108_EC_RXCFG) &
        ~TSI108_EC_RXCFG_RST);

 TSI_WRITE(TSI108_MAC_MII_MGMT_CFG,
        TSI_READ(TSI108_MAC_MII_MGMT_CFG) |
        TSI108_MAC_MII_MGMT_RST);
 udelay(100);
 TSI_WRITE(TSI108_MAC_MII_MGMT_CFG,
        (TSI_READ(TSI108_MAC_MII_MGMT_CFG) &
        ~(TSI108_MAC_MII_MGMT_RST |
          TSI108_MAC_MII_MGMT_CLK)) | 0x07);
}
