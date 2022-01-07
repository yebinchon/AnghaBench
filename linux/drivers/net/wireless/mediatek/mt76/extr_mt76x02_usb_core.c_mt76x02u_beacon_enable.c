
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int beacon_int; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int N_BCN_SLOTS ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int mt76x02_mac_set_beacon (struct mt76x02_dev*,int,int *) ;
 int mt76x02u_start_pre_tbtt_timer (struct mt76x02_dev*) ;

__attribute__((used)) static void mt76x02u_beacon_enable(struct mt76x02_dev *dev, bool en)
{
 int i;

 if (WARN_ON_ONCE(!dev->mt76.beacon_int))
  return;

 if (en) {
  mt76x02u_start_pre_tbtt_timer(dev);
 } else {



  for (i = 0; i < N_BCN_SLOTS; i++)
   mt76x02_mac_set_beacon(dev, i, ((void*)0));
 }
}
