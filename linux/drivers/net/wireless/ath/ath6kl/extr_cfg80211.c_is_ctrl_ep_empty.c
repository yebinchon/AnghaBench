
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {size_t ctrl_ep; int * tx_pending; } ;



__attribute__((used)) static bool is_ctrl_ep_empty(struct ath6kl *ar)
{
 return !ar->tx_pending[ar->ctrl_ep];
}
