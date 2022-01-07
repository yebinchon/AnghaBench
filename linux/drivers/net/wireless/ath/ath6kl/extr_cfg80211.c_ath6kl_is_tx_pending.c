
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {scalar_t__* tx_pending; int wmi; } ;


 size_t ath6kl_wmi_get_control_ep (int ) ;

__attribute__((used)) static bool ath6kl_is_tx_pending(struct ath6kl *ar)
{
 return ar->tx_pending[ath6kl_wmi_get_control_ep(ar->wmi)] == 0;
}
