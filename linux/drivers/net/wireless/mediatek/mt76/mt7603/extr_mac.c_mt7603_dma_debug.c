
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mt7603_dev {int dummy; } ;


 int FIELD_GET (int ,int ) ;
 int FIELD_PREP (int ,int ) ;
 int MT_WPDMA_DEBUG ;
 int MT_WPDMA_DEBUG_IDX ;
 int MT_WPDMA_DEBUG_SEL ;
 int MT_WPDMA_DEBUG_VALUE ;
 int mt76_rr (struct mt7603_dev*,int ) ;
 int mt76_wr (struct mt7603_dev*,int ,int) ;

__attribute__((used)) static u32 mt7603_dma_debug(struct mt7603_dev *dev, u8 index)
{
 u32 val;

 mt76_wr(dev, MT_WPDMA_DEBUG,
  FIELD_PREP(MT_WPDMA_DEBUG_IDX, index) |
  MT_WPDMA_DEBUG_SEL);

 val = mt76_rr(dev, MT_WPDMA_DEBUG);
 return FIELD_GET(MT_WPDMA_DEBUG_VALUE, val);
}
