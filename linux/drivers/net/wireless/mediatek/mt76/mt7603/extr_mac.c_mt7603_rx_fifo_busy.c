
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7603_dev {int dummy; } ;


 int BIT (int) ;
 scalar_t__ is_mt7628 (struct mt7603_dev*) ;
 int mt7603_dma_debug (struct mt7603_dev*,int) ;

__attribute__((used)) static bool mt7603_rx_fifo_busy(struct mt7603_dev *dev)
{
 if (is_mt7628(dev))
  return mt7603_dma_debug(dev, 9) & BIT(9);

 return mt7603_dma_debug(dev, 2) & BIT(8);
}
