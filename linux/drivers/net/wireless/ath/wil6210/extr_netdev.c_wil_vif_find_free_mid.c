
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct wil6210_priv {int * vifs; } ;


 size_t GET_MAX_VIFS (struct wil6210_priv*) ;
 size_t U8_MAX ;

__attribute__((used)) static u8 wil_vif_find_free_mid(struct wil6210_priv *wil)
{
 u8 i;

 for (i = 0; i < GET_MAX_VIFS(wil); i++) {
  if (!wil->vifs[i])
   return i;
 }

 return U8_MAX;
}
