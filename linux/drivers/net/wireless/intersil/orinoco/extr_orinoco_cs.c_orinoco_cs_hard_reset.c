
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int socket; } ;
struct orinoco_private {struct orinoco_pccard* card; } ;
struct orinoco_pccard {int hard_reset_in_progress; struct pcmcia_device* p_dev; } ;


 int clear_bit (int ,int *) ;
 int msleep (int) ;
 int pcmcia_reset_card (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
orinoco_cs_hard_reset(struct orinoco_private *priv)
{
 struct orinoco_pccard *card = priv->card;
 struct pcmcia_device *link = card->p_dev;
 int err;


 set_bit(0, &card->hard_reset_in_progress);

 err = pcmcia_reset_card(link->socket);
 if (err)
  return err;

 msleep(100);
 clear_bit(0, &card->hard_reset_in_progress);

 return 0;
}
