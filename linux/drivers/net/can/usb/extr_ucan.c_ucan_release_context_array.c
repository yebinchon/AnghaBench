
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucan_priv {int * context_array; scalar_t__ available_tx_urbs; } ;


 int kfree (int *) ;

__attribute__((used)) static void ucan_release_context_array(struct ucan_priv *up)
{
 if (!up->context_array)
  return;


 up->available_tx_urbs = 0;

 kfree(up->context_array);
 up->context_array = ((void*)0);
}
