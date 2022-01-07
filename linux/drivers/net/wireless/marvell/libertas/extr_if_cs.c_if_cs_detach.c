
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct if_cs_card* priv; } ;
struct if_cs_card {int priv; } ;


 int if_cs_disable_ints (struct if_cs_card*) ;
 int if_cs_release (struct pcmcia_device*) ;
 int kfree (struct if_cs_card*) ;
 int lbs_remove_card (int ) ;
 int lbs_stop_card (int ) ;

__attribute__((used)) static void if_cs_detach(struct pcmcia_device *p_dev)
{
 struct if_cs_card *card = p_dev->priv;

 lbs_stop_card(card->priv);
 lbs_remove_card(card->priv);
 if_cs_disable_ints(card);
 if_cs_release(p_dev);
 kfree(card);
}
