
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_cookie {struct ath6kl_cookie* arc_list_next; } ;
struct ath6kl {int cookie_count; struct ath6kl_cookie* cookie_list; } ;



struct ath6kl_cookie *ath6kl_alloc_cookie(struct ath6kl *ar)
{
 struct ath6kl_cookie *cookie;

 cookie = ar->cookie_list;
 if (cookie != ((void*)0)) {
  ar->cookie_list = cookie->arc_list_next;
  ar->cookie_count--;
 }

 return cookie;
}
