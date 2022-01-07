
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7603_dev {int dummy; } ;


 int mt7603_reg_map (struct mt7603_dev*,int) ;

__attribute__((used)) static u32 __mt7603_reg_addr(struct mt7603_dev *dev, u32 addr)
{
 if (addr < 0x100000)
  return addr;

 return mt7603_reg_map(dev, addr);
}
