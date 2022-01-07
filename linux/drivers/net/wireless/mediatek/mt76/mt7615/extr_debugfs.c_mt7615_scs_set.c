
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mt7615_dev {int dummy; } ;


 int mt7615_mac_set_scs (struct mt7615_dev*,int ) ;

__attribute__((used)) static int
mt7615_scs_set(void *data, u64 val)
{
 struct mt7615_dev *dev = data;

 mt7615_mac_set_scs(dev, val);

 return 0;
}
