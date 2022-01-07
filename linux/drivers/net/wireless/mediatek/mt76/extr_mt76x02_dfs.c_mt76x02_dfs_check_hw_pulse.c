
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mt76x02_dfs_hw_pulse {int period; int w1; int engine; } ;
struct TYPE_5__ {TYPE_1__* chan; } ;
struct TYPE_6__ {int region; TYPE_2__ chandef; } ;
struct mt76x02_dev {TYPE_3__ mt76; } ;
struct TYPE_4__ {int center_freq; } ;






 int mt76x02_dfs_check_chirp (struct mt76x02_dev*) ;

__attribute__((used)) static bool mt76x02_dfs_check_hw_pulse(struct mt76x02_dev *dev,
           struct mt76x02_dfs_hw_pulse *pulse)
{
 bool ret = 0;

 if (!pulse->period || !pulse->w1)
  return 0;

 switch (dev->mt76.region) {
 case 130:
  if (pulse->engine > 3)
   break;

  if (pulse->engine == 3) {
   ret = mt76x02_dfs_check_chirp(dev);
   break;
  }


  if (pulse->w1 < 120)
   ret = (pulse->period >= 2900 &&
          (pulse->period <= 4700 ||
    pulse->period >= 6400) &&
          (pulse->period <= 6800 ||
    pulse->period >= 10200) &&
          pulse->period <= 61600);
  else if (pulse->w1 < 130)
   ret = (pulse->period >= 2900 &&
          pulse->period <= 61600);
  else
   ret = (pulse->period >= 3500 &&
          pulse->period <= 10100);
  break;
 case 131:
  if (pulse->engine >= 3)
   break;

  ret = (pulse->period >= 4900 &&
         (pulse->period <= 10200 ||
   pulse->period >= 12400) &&
         pulse->period <= 100100);
  break;
 case 129:
  if (dev->mt76.chandef.chan->center_freq >= 5250 &&
      dev->mt76.chandef.chan->center_freq <= 5350) {

   if (pulse->w1 <= 130)
    ret = (pulse->period >= 28360 &&
           (pulse->period <= 28700 ||
     pulse->period >= 76900) &&
           pulse->period <= 76940);
   break;
  }

  if (pulse->engine > 3)
   break;

  if (pulse->engine == 3) {
   ret = mt76x02_dfs_check_chirp(dev);
   break;
  }


  if (pulse->w1 < 120)
   ret = (pulse->period >= 2900 &&
          (pulse->period <= 4700 ||
    pulse->period >= 6400) &&
          (pulse->period <= 6800 ||
    pulse->period >= 27560) &&
          (pulse->period <= 27960 ||
    pulse->period >= 28360) &&
          (pulse->period <= 28700 ||
    pulse->period >= 79900) &&
          pulse->period <= 80100);
  else if (pulse->w1 < 130)
   ret = (pulse->period >= 2900 &&
          (pulse->period <= 10100 ||
    pulse->period >= 27560) &&
          (pulse->period <= 27960 ||
    pulse->period >= 28360) &&
          (pulse->period <= 28700 ||
    pulse->period >= 79900) &&
          pulse->period <= 80100);
  else
   ret = (pulse->period >= 3900 &&
          pulse->period <= 10100);
  break;
 case 128:
 default:
  return 0;
 }

 return ret;
}
