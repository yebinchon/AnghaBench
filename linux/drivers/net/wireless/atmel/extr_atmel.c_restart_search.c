
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atmel_private {scalar_t__ current_BSS; TYPE_1__* BSSinfo; int connect_to_any_BSS; } ;
struct TYPE_2__ {int channel; } ;


 int atmel_join_bss (struct atmel_private*,int) ;
 int atmel_scan (struct atmel_private*,int) ;
 int retrieve_bss (struct atmel_private*) ;

__attribute__((used)) static void restart_search(struct atmel_private *priv)
{
 int bss_index;

 if (!priv->connect_to_any_BSS) {
  atmel_scan(priv, 1);
 } else {
  priv->BSSinfo[(int)(priv->current_BSS)].channel |= 0x80;

  if ((bss_index = retrieve_bss(priv)) != -1)
   atmel_join_bss(priv, bss_index);
  else
   atmel_scan(priv, 0);
 }
}
