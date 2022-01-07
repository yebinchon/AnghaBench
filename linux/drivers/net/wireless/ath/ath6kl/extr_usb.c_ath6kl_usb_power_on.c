
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {int dummy; } ;


 int hif_start (struct ath6kl*) ;

__attribute__((used)) static int ath6kl_usb_power_on(struct ath6kl *ar)
{
 hif_start(ar);
 return 0;
}
