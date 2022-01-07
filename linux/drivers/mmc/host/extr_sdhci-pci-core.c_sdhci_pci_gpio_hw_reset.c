
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pci_slot {int rst_n_gpio; } ;
struct sdhci_host {int dummy; } ;


 int gpio_is_valid (int) ;
 int gpio_set_value_cansleep (int,int) ;
 struct sdhci_pci_slot* sdhci_priv (struct sdhci_host*) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void sdhci_pci_gpio_hw_reset(struct sdhci_host *host)
{
 struct sdhci_pci_slot *slot = sdhci_priv(host);
 int rst_n_gpio = slot->rst_n_gpio;

 if (!gpio_is_valid(rst_n_gpio))
  return;
 gpio_set_value_cansleep(rst_n_gpio, 0);

 udelay(10);
 gpio_set_value_cansleep(rst_n_gpio, 1);

 usleep_range(300, 1000);
}
