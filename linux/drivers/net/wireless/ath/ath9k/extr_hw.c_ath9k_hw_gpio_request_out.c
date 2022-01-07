
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int ath9k_hw_gpio_request (struct ath_hw*,int ,int,char const*,int ) ;

void ath9k_hw_gpio_request_out(struct ath_hw *ah, u32 gpio, const char *label,
          u32 ah_signal_type)
{
 ath9k_hw_gpio_request(ah, gpio, 1, label, ah_signal_type);
}
