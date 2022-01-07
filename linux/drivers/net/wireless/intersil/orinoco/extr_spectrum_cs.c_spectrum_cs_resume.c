
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct orinoco_private* priv; } ;
struct orinoco_private {int dummy; } ;


 int orinoco_up (struct orinoco_private*) ;

__attribute__((used)) static int
spectrum_cs_resume(struct pcmcia_device *link)
{
 struct orinoco_private *priv = link->priv;
 int err = orinoco_up(priv);

 return err;
}
