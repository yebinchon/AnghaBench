
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int users; } ;


 int atomic_dec (int *) ;

void hostap_handle_sta_release(void *ptr)
{
 struct sta_info *sta = ptr;
 atomic_dec(&sta->users);
}
