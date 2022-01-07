
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76x02_rx_freq_cal {scalar_t__ lna_gain; scalar_t__* rssi_offset; } ;
struct TYPE_2__ {struct mt76x02_rx_freq_cal rx; } ;
struct mt76x02_dev {TYPE_1__ cal; } ;
typedef int s8 ;



__attribute__((used)) static int
mt76x02_mac_get_rssi(struct mt76x02_dev *dev, s8 rssi, int chain)
{
 struct mt76x02_rx_freq_cal *cal = &dev->cal.rx;

 rssi += cal->rssi_offset[chain];
 rssi -= cal->lna_gain;

 return rssi;
}
