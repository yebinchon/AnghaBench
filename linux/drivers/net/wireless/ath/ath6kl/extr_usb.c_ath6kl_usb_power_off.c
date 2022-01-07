
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {int dummy; } ;


 int hif_detach_htc (struct ath6kl*) ;

__attribute__((used)) static int ath6kl_usb_power_off(struct ath6kl *ar)
{
 hif_detach_htc(ar);
 return 0;
}
