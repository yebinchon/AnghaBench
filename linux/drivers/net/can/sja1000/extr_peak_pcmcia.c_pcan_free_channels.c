
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pcan_pccard {int chan_count; TYPE_2__* pdev; TYPE_1__* channel; } ;
struct net_device {int name; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct net_device* netdev; } ;


 int IFNAMSIZ ;
 int PCC_LED (int) ;
 int PCC_LED_OFF ;
 int dev_info (int *,char*,char*) ;
 int free_sja1000dev (struct net_device*) ;
 scalar_t__ pcan_pccard_present (struct pcan_pccard*) ;
 int pcan_set_can_power (struct pcan_pccard*,int ) ;
 int pcan_set_leds (struct pcan_pccard*,int ,int ) ;
 int strlcpy (char*,int ,int) ;
 int unregister_sja1000dev (struct net_device*) ;

__attribute__((used)) static void pcan_free_channels(struct pcan_pccard *card)
{
 int i;
 u8 led_mask = 0;

 for (i = 0; i < card->chan_count; i++) {
  struct net_device *netdev;
  char name[IFNAMSIZ];

  led_mask |= PCC_LED(i);

  netdev = card->channel[i].netdev;
  if (!netdev)
   continue;

  strlcpy(name, netdev->name, IFNAMSIZ);

  unregister_sja1000dev(netdev);

  free_sja1000dev(netdev);

  dev_info(&card->pdev->dev, "%s removed\n", name);
 }


 if (pcan_pccard_present(card)) {
  pcan_set_leds(card, led_mask, PCC_LED_OFF);
  pcan_set_can_power(card, 0);
 }
}
