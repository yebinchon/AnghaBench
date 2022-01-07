
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mt7615_dev {int dummy; } ;


 int mt7615_mcu_rdd_send_pattern (struct mt7615_dev*) ;

__attribute__((used)) static int
mt7615_radar_pattern_set(void *data, u64 val)
{
 struct mt7615_dev *dev = data;

 return mt7615_mcu_rdd_send_pattern(dev);
}
