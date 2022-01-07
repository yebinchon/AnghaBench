
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct dvb_bt8xx_card {int bttv_nr; } ;
struct TYPE_2__ {struct dvb_bt8xx_card* priv; } ;


 int bttv_write_gpio (int ,int,int) ;
 int msleep (int) ;

__attribute__((used)) static void or51211_setmode(struct dvb_frontend * fe, int mode)
{
 struct dvb_bt8xx_card *bt = fe->dvb->priv;
 bttv_write_gpio(bt->bttv_nr, 0x0002, mode);
 msleep(20);
}
