
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int ath10k_usb_flush_all (struct ath10k*) ;

__attribute__((used)) static void ath10k_usb_hif_power_down(struct ath10k *ar)
{
 ath10k_usb_flush_all(ar);
}
