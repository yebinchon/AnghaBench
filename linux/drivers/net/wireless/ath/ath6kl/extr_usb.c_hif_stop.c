
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_usb {int dummy; } ;
struct ath6kl {int dummy; } ;


 int ath6kl_usb_flush_all (struct ath6kl_usb*) ;
 struct ath6kl_usb* ath6kl_usb_priv (struct ath6kl*) ;

__attribute__((used)) static void hif_stop(struct ath6kl *ar)
{
 struct ath6kl_usb *device = ath6kl_usb_priv(ar);

 ath6kl_usb_flush_all(device);
}
