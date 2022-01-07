
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* remove_frontend ) (TYPE_1__*,int *) ;} ;
struct TYPE_6__ {TYPE_1__ dmx; } ;
struct dvb_bt8xx_card {int dvb_adapter; scalar_t__ fe; TYPE_3__ demux; int dmxdev; int fe_hw; int fe_mem; int dvbnet; TYPE_4__* bt; int bttv_nr; } ;
struct bttv_sub_device {int dev; } ;
struct TYPE_7__ {int tasklet; } ;


 int bt878_stop (TYPE_4__*) ;
 struct dvb_bt8xx_card* dev_get_drvdata (int *) ;
 int dprintk (char*,int ) ;
 int dvb_dmx_release (TYPE_3__*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_frontend_detach (scalar_t__) ;
 int dvb_net_release (int *) ;
 int dvb_unregister_adapter (int *) ;
 int dvb_unregister_frontend (scalar_t__) ;
 int kfree (struct dvb_bt8xx_card*) ;
 int stub1 (TYPE_1__*,int *) ;
 int stub2 (TYPE_1__*,int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void dvb_bt8xx_remove(struct bttv_sub_device *sub)
{
 struct dvb_bt8xx_card *card = dev_get_drvdata(&sub->dev);

 dprintk("dvb_bt8xx: unloading card%d\n", card->bttv_nr);

 bt878_stop(card->bt);
 tasklet_kill(&card->bt->tasklet);
 dvb_net_release(&card->dvbnet);
 card->demux.dmx.remove_frontend(&card->demux.dmx, &card->fe_mem);
 card->demux.dmx.remove_frontend(&card->demux.dmx, &card->fe_hw);
 dvb_dmxdev_release(&card->dmxdev);
 dvb_dmx_release(&card->demux);
 if (card->fe) {
  dvb_unregister_frontend(card->fe);
  dvb_frontend_detach(card->fe);
 }
 dvb_unregister_adapter(&card->dvb_adapter);

 kfree(card);
}
