
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct dvb_bt8xx_card {int bttv_nr; } ;
struct TYPE_2__ {struct dvb_bt8xx_card* priv; } ;


 int bttv_gpio_enable (int ,int,int) ;
 int bttv_write_gpio (int ,int,int) ;
 int msleep (int) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static void or51211_reset(struct dvb_frontend * fe)
{
 struct dvb_bt8xx_card *bt = fe->dvb->priv;
 int ret = bttv_gpio_enable(bt->bttv_nr, 0x001F, 0x001F);
 if (ret != 0)
  pr_warn("or51211: Init Error - Can't Reset DVR (%i)\n", ret);
 bttv_write_gpio(bt->bttv_nr, 0x001F, 0x0000);
 msleep(20);

 bttv_write_gpio(bt->bttv_nr, 0x0001F, 0x0001);

 msleep(500);
}
