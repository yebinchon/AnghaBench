
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wil6210_priv {TYPE_1__* srings; } ;
struct TYPE_2__ {int va; } ;


 int EINVAL ;
 int WIL6210_MAX_STATUS_RINGS ;

__attribute__((used)) static int wil_find_free_sring(struct wil6210_priv *wil)
{
 int i;

 for (i = 0; i < WIL6210_MAX_STATUS_RINGS; i++) {
  if (!wil->srings[i].va)
   return i;
 }

 return -EINVAL;
}
