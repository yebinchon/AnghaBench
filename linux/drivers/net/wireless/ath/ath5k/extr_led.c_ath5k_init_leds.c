
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int driver_data; } ;
struct pci_dev {int dummy; } ;
struct ieee80211_hw {int wiphy; } ;
struct ath5k_hw {int tx_led; int rx_led; int status; int led_on; int led_pin; struct pci_dev* pdev; struct ieee80211_hw* hw; } ;
typedef int name ;


 int ATH5K_LED_MAX_NAME_LEN ;
 int ATH_PIN (int ) ;
 int ATH_POLARITY (int ) ;
 int ATH_STAT_LEDSOFT ;
 int __set_bit (int ,int ) ;
 int * ath5k_led_devices ;
 int ath5k_led_enable (struct ath5k_hw*) ;
 int ath5k_register_led (struct ath5k_hw*,int *,char*,int ) ;
 int ieee80211_get_rx_led_name (struct ieee80211_hw*) ;
 int ieee80211_get_tx_led_name (struct ieee80211_hw*) ;
 struct pci_device_id* pci_match_id (int *,struct pci_dev*) ;
 int snprintf (char*,int,char*,char*) ;
 int test_bit (int ,int ) ;
 char* wiphy_name (int ) ;

int ath5k_init_leds(struct ath5k_hw *ah)
{
 int ret = 0;
 struct ieee80211_hw *hw = ah->hw;

 struct pci_dev *pdev = ah->pdev;

 char name[ATH5K_LED_MAX_NAME_LEN + 1];
 const struct pci_device_id *match;

 if (!ah->pdev)
  return 0;




 match = pci_match_id(&ath5k_led_devices[0], pdev);

 if (match) {
  __set_bit(ATH_STAT_LEDSOFT, ah->status);
  ah->led_pin = ATH_PIN(match->driver_data);
  ah->led_on = ATH_POLARITY(match->driver_data);
 }

 if (!test_bit(ATH_STAT_LEDSOFT, ah->status))
  goto out;

 ath5k_led_enable(ah);

 snprintf(name, sizeof(name), "ath5k-%s::rx", wiphy_name(hw->wiphy));
 ret = ath5k_register_led(ah, &ah->rx_led, name,
  ieee80211_get_rx_led_name(hw));
 if (ret)
  goto out;

 snprintf(name, sizeof(name), "ath5k-%s::tx", wiphy_name(hw->wiphy));
 ret = ath5k_register_led(ah, &ah->tx_led, name,
  ieee80211_get_tx_led_name(hw));
out:
 return ret;
}
