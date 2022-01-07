
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {scalar_t__ cookie_count; int * cookie_list; } ;



void ath6kl_cookie_cleanup(struct ath6kl *ar)
{
 ar->cookie_list = ((void*)0);
 ar->cookie_count = 0;
}
