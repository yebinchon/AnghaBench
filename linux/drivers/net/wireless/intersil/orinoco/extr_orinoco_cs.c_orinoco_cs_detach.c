
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct orinoco_private* priv; } ;
struct orinoco_private {int dummy; } ;


 int free_orinocodev (struct orinoco_private*) ;
 int orinoco_cs_release (struct pcmcia_device*) ;
 int orinoco_if_del (struct orinoco_private*) ;
 int priv_to_wiphy (struct orinoco_private*) ;
 int wiphy_unregister (int ) ;

__attribute__((used)) static void orinoco_cs_detach(struct pcmcia_device *link)
{
 struct orinoco_private *priv = link->priv;

 orinoco_if_del(priv);

 orinoco_cs_release(link);

 wiphy_unregister(priv_to_wiphy(priv));
 free_orinocodev(priv);
}
