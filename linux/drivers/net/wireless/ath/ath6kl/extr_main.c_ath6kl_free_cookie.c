
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_cookie {struct ath6kl_cookie* arc_list_next; } ;
struct ath6kl {int cookie_count; struct ath6kl_cookie* cookie_list; } ;



void ath6kl_free_cookie(struct ath6kl *ar, struct ath6kl_cookie *cookie)
{


 if (!ar || !cookie)
  return;

 cookie->arc_list_next = ar->cookie_list;
 ar->cookie_list = cookie;
 ar->cookie_count++;
}
