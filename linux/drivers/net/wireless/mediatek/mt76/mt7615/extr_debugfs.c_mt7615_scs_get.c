
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mt7615_dev {int scs_en; } ;



__attribute__((used)) static int
mt7615_scs_get(void *data, u64 *val)
{
 struct mt7615_dev *dev = data;

 *val = dev->scs_en;

 return 0;
}
