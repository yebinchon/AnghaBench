
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct orinoco_private* priv; int dev; } ;
struct orinoco_private {struct orinoco_pccard* card; } ;
struct orinoco_pccard {struct pcmcia_device* p_dev; } ;


 int ENOMEM ;
 struct orinoco_private* alloc_orinocodev (int,int *,int ,int ) ;
 int spectrum_cs_config (struct pcmcia_device*) ;
 int spectrum_cs_hard_reset ;
 int spectrum_cs_stop_firmware ;

__attribute__((used)) static int
spectrum_cs_probe(struct pcmcia_device *link)
{
 struct orinoco_private *priv;
 struct orinoco_pccard *card;

 priv = alloc_orinocodev(sizeof(*card), &link->dev,
    spectrum_cs_hard_reset,
    spectrum_cs_stop_firmware);
 if (!priv)
  return -ENOMEM;
 card = priv->card;


 card->p_dev = link;
 link->priv = priv;

 return spectrum_cs_config(link);
}
