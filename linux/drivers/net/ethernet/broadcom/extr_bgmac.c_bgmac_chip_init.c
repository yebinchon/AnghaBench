
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bgmac {scalar_t__ loopback; TYPE_1__* net_dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int BGMAC_CMDCFG_ML ;
 int BGMAC_CMDCFG_RPI ;
 int BGMAC_INT_RECV_LAZY ;
 int BGMAC_INT_STATUS ;
 int BGMAC_IRL_FC_SHIFT ;
 int BGMAC_RXMAX_LENGTH ;
 int ETHER_MAX_LEN ;
 int bgmac_chip_intrs_on (struct bgmac*) ;
 int bgmac_cmdcfg_maskset (struct bgmac*,int ,int ,int) ;
 int bgmac_enable (struct bgmac*) ;
 int bgmac_set_rx_mode (TYPE_1__*) ;
 int bgmac_write (struct bgmac*,int ,int) ;
 int bgmac_write_mac_address (struct bgmac*,int ) ;

__attribute__((used)) static void bgmac_chip_init(struct bgmac *bgmac)
{

 bgmac_write(bgmac, BGMAC_INT_STATUS, ~0);


 bgmac_write(bgmac, BGMAC_INT_RECV_LAZY, 1 << BGMAC_IRL_FC_SHIFT);


 bgmac_cmdcfg_maskset(bgmac, ~BGMAC_CMDCFG_RPI, 0, 1);

 bgmac_set_rx_mode(bgmac->net_dev);

 bgmac_write_mac_address(bgmac, bgmac->net_dev->dev_addr);

 if (bgmac->loopback)
  bgmac_cmdcfg_maskset(bgmac, ~0, BGMAC_CMDCFG_ML, 0);
 else
  bgmac_cmdcfg_maskset(bgmac, ~BGMAC_CMDCFG_ML, 0, 0);

 bgmac_write(bgmac, BGMAC_RXMAX_LENGTH, 32 + ETHER_MAX_LEN);

 bgmac_chip_intrs_on(bgmac);

 bgmac_enable(bgmac);
}
