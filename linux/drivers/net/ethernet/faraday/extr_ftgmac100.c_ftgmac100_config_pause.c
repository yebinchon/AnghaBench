
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ftgmac100 {scalar_t__ base; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;


 int FTGMAC100_FCR_FCTHR_EN ;
 int FTGMAC100_FCR_FC_EN ;
 int FTGMAC100_FCR_PAUSE_TIME (int) ;
 scalar_t__ FTGMAC100_OFFSET_FCR ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void ftgmac100_config_pause(struct ftgmac100 *priv)
{
 u32 fcr = FTGMAC100_FCR_PAUSE_TIME(16);


 if (priv->rx_pause)
  fcr |= FTGMAC100_FCR_FC_EN;




 if (priv->tx_pause)
  fcr |= FTGMAC100_FCR_FCTHR_EN;

 iowrite32(fcr, priv->base + FTGMAC100_OFFSET_FCR);
}
