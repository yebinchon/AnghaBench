
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int mem_lock; } ;


 int up_read (int *) ;

void wil_mem_access_unlock(struct wil6210_priv *wil)
{
 up_read(&wil->mem_lock);
}
