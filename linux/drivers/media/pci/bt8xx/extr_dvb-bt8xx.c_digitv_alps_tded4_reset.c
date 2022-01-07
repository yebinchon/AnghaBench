
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_bt8xx_card {int bttv_nr; } ;


 int bttv_gpio_enable (int ,int,int) ;
 int bttv_write_gpio (int ,int,int) ;
 int msleep (int) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static void digitv_alps_tded4_reset(struct dvb_bt8xx_card *bt)
{







 int ret = bttv_gpio_enable(bt->bttv_nr, 0x08, 0x08);
 if (ret != 0)
  pr_warn("digitv_alps_tded4: Init Error - Can't Reset DVR (%i)\n",
   ret);


 bttv_write_gpio(bt->bttv_nr, 0x08, 0x08);
 bttv_write_gpio(bt->bttv_nr, 0x08, 0x00);
 msleep(100);

 bttv_write_gpio(bt->bttv_nr, 0x08, 0x08);
}
