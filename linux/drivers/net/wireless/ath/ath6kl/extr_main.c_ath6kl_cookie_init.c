
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ath6kl {int * cookie_mem; scalar_t__ cookie_count; int * cookie_list; } ;


 size_t MAX_COOKIE_NUM ;
 int ath6kl_free_cookie (struct ath6kl*,int *) ;
 int memset (int *,int ,int) ;

void ath6kl_cookie_init(struct ath6kl *ar)
{
 u32 i;

 ar->cookie_list = ((void*)0);
 ar->cookie_count = 0;

 memset(ar->cookie_mem, 0, sizeof(ar->cookie_mem));

 for (i = 0; i < MAX_COOKIE_NUM; i++)
  ath6kl_free_cookie(ar, &ar->cookie_mem[i]);
}
