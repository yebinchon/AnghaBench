
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {int dummy; } ;


 int hif_stop (struct ath6kl*) ;

__attribute__((used)) static void ath6kl_usb_stop(struct ath6kl *ar)
{
 hif_stop(ar);
}
