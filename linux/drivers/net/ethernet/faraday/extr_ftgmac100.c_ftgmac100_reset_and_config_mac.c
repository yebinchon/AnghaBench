
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ftgmac100 {int cur_speed; scalar_t__ tx_pointer; scalar_t__ tx_clean_pointer; scalar_t__ rx_pointer; int netdev; } ;


 int EIO ;
 int FTGMAC100_MACCR_FAST_MODE ;
 int FTGMAC100_MACCR_GIGA_MODE ;



 int ftgmac100_reset_mac (struct ftgmac100*,int ) ;
 int netdev_err (int ,char*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ftgmac100_reset_and_config_mac(struct ftgmac100 *priv)
{
 u32 maccr = 0;

 switch (priv->cur_speed) {
 case 130:
 case 0:
  break;

 case 129:
  maccr |= FTGMAC100_MACCR_FAST_MODE;
  break;

 case 128:
  maccr |= FTGMAC100_MACCR_GIGA_MODE;
  break;
 default:
  netdev_err(priv->netdev, "Unknown speed %d !\n",
      priv->cur_speed);
  break;
 }


 priv->rx_pointer = 0;
 priv->tx_clean_pointer = 0;
 priv->tx_pointer = 0;


 if (ftgmac100_reset_mac(priv, maccr))
  return -EIO;
 usleep_range(10, 1000);
 return ftgmac100_reset_mac(priv, maccr);
}
