
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_private {scalar_t__ manfid; scalar_t__ cardid; } ;
struct pcmcia_device {scalar_t__ open; struct net_device* priv; } ;
struct net_device {int base_addr; } ;


 scalar_t__ MANFID_MEGAHERTZ ;
 scalar_t__ MANFID_MOTOROLA ;
 scalar_t__ MANFID_OSITECH ;
 scalar_t__ MANFID_PSION ;
 int OSITECH_AUI_PWR ;
 int OSITECH_RESET_ISR ;
 scalar_t__ PRODID_MEGAHERTZ_EM3288 ;
 scalar_t__ PRODID_OSITECH_SEVEN ;
 scalar_t__ PRODID_PSION_NET100 ;
 int mhz_3288_power (struct pcmcia_device*) ;
 int mot_config (struct pcmcia_device*) ;
 int netdev_err (struct net_device*,char*) ;
 struct smc_private* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int osi_load_firmware (struct pcmcia_device*) ;
 int set_bits (int,int) ;
 int smc_reset (struct net_device*) ;

__attribute__((used)) static int smc91c92_resume(struct pcmcia_device *link)
{
 struct net_device *dev = link->priv;
 struct smc_private *smc = netdev_priv(dev);
 int i;

 if ((smc->manfid == MANFID_MEGAHERTZ) &&
     (smc->cardid == PRODID_MEGAHERTZ_EM3288))
  mhz_3288_power(link);
 if (smc->manfid == MANFID_MOTOROLA)
  mot_config(link);
 if ((smc->manfid == MANFID_OSITECH) &&
     (smc->cardid != PRODID_OSITECH_SEVEN)) {

  set_bits(0x0300, dev->base_addr-0x10+OSITECH_AUI_PWR);
  set_bits(0x0300, dev->base_addr-0x10+OSITECH_RESET_ISR);
 }
 if (((smc->manfid == MANFID_OSITECH) &&
      (smc->cardid == PRODID_OSITECH_SEVEN)) ||
     ((smc->manfid == MANFID_PSION) &&
      (smc->cardid == PRODID_PSION_NET100))) {
  i = osi_load_firmware(link);
  if (i) {
   netdev_err(dev, "Failed to load firmware\n");
   return i;
  }
 }
 if (link->open) {
  smc_reset(dev);
  netif_device_attach(dev);
 }

 return 0;
}
