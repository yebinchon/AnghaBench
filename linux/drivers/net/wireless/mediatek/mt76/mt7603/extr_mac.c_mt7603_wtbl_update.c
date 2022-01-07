
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7603_dev {int dummy; } ;


 int FIELD_PREP (int ,int) ;
 int MT_WTBL_UPDATE ;
 int MT_WTBL_UPDATE_BUSY ;
 int MT_WTBL_UPDATE_WLAN_IDX ;
 int mt76_poll (struct mt7603_dev*,int ,int ,int ,int) ;
 int mt76_rmw (struct mt7603_dev*,int ,int ,int) ;

__attribute__((used)) static void
mt7603_wtbl_update(struct mt7603_dev *dev, int idx, u32 mask)
{
 mt76_rmw(dev, MT_WTBL_UPDATE, MT_WTBL_UPDATE_WLAN_IDX,
   FIELD_PREP(MT_WTBL_UPDATE_WLAN_IDX, idx) | mask);

 mt76_poll(dev, MT_WTBL_UPDATE, MT_WTBL_UPDATE_BUSY, 0, 5000);
}
