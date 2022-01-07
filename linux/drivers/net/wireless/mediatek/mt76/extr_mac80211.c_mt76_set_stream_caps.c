
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sband; } ;
struct TYPE_5__ {scalar_t__ has_5ghz; scalar_t__ has_2ghz; } ;
struct TYPE_4__ {int sband; } ;
struct mt76_dev {TYPE_3__ sband_5g; TYPE_2__ cap; TYPE_1__ sband_2g; } ;


 int mt76_init_stream_cap (struct mt76_dev*,int *,int) ;

void mt76_set_stream_caps(struct mt76_dev *dev, bool vht)
{
 if (dev->cap.has_2ghz)
  mt76_init_stream_cap(dev, &dev->sband_2g.sband, 0);
 if (dev->cap.has_5ghz)
  mt76_init_stream_cap(dev, &dev->sband_5g.sband, vht);
}
