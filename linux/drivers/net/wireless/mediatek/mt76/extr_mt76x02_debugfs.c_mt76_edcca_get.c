
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mt76x02_dev {int ed_monitor_enabled; } ;



__attribute__((used)) static int
mt76_edcca_get(void *data, u64 *val)
{
 struct mt76x02_dev *dev = data;

 *val = dev->ed_monitor_enabled;
 return 0;
}
