
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7603_dev {int dummy; } ;


 int MT_WTBL1_W3_SKIP_TX ;
 int mt7603_wtbl1_addr (int) ;
 int mt76_rr (struct mt7603_dev*,int) ;
 int mt76_wr (struct mt7603_dev*,int,int) ;

__attribute__((used)) static void
mt7603_wtbl_set_skip_tx(struct mt7603_dev *dev, int idx, bool enabled)
{
 u32 addr = mt7603_wtbl1_addr(idx);
 u32 val = mt76_rr(dev, addr + 3 * 4);

 val &= ~MT_WTBL1_W3_SKIP_TX;
 val |= enabled * MT_WTBL1_W3_SKIP_TX;

 mt76_wr(dev, addr + 3 * 4, val);
}
