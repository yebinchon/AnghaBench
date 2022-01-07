
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpsw_common {int speed; int tx_ch_num; TYPE_1__* txv; } ;
struct TYPE_2__ {int ch; } ;


 int cpdma_chan_get_rate (int ) ;
 int cpsw_get_common_speed (struct cpsw_common*) ;

__attribute__((used)) static int cpsw_need_resplit(struct cpsw_common *cpsw)
{
 int i, rlim_ch_num;
 int speed, ch_rate;


 speed = cpsw_get_common_speed(cpsw);
 if (speed == cpsw->speed || !speed)
  return 0;

 cpsw->speed = speed;

 for (i = 0, rlim_ch_num = 0; i < cpsw->tx_ch_num; i++) {
  ch_rate = cpdma_chan_get_rate(cpsw->txv[i].ch);
  if (!ch_rate)
   break;

  rlim_ch_num++;
 }


 if (!rlim_ch_num || rlim_ch_num == cpsw->tx_ch_num)
  return 0;

 return 1;
}
