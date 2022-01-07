
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sja1000_priv {int reg_base; struct pcan_pccard* priv; } ;
struct pcan_pccard {int ioport_addr; } ;



 int PCC_CHAN_SIZE ;
 int PCC_LED (int) ;
 int PCC_LED_ON ;
 int PCC_LED_SLOW ;
 int SJA1000_MOD ;
 int iowrite8 (int,int) ;
 int pcan_set_leds (struct pcan_pccard*,int ,int ) ;
 int pcan_start_led_timer (struct pcan_pccard*) ;

__attribute__((used)) static void pcan_write_canreg(const struct sja1000_priv *priv, int port, u8 v)
{
 struct pcan_pccard *card = priv->priv;
 int c = (priv->reg_base - card->ioport_addr) / PCC_CHAN_SIZE;


 if (port == SJA1000_MOD)
  switch (v) {
  case 128:

   pcan_set_leds(card, PCC_LED(c), PCC_LED_ON);
   break;
  case 0x00:

   pcan_set_leds(card, PCC_LED(c), PCC_LED_SLOW);
   pcan_start_led_timer(card);
   break;
  default:
   break;
  }

 iowrite8(v, priv->reg_base + port);
}
