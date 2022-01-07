
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hostap_cs_priv {int * link; } ;
struct TYPE_3__ {struct hostap_cs_priv* hw_priv; } ;
typedef TYPE_1__ local_info_t ;


 scalar_t__ pcmcia_dev_present (int *) ;

__attribute__((used)) static int prism2_pccard_card_present(local_info_t *local)
{
 struct hostap_cs_priv *hw_priv = local->hw_priv;
 if (hw_priv != ((void*)0) && hw_priv->link != ((void*)0) && pcmcia_dev_present(hw_priv->link))
  return 1;
 return 0;
}
