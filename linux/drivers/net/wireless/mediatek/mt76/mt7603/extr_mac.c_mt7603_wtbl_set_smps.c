
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int idx; } ;
struct mt7603_sta {int smps; TYPE_1__ wcid; } ;
struct mt7603_dev {int dummy; } ;


 int MT_WTBL1_W2_SMPS ;
 scalar_t__ mt7603_wtbl1_addr (int ) ;
 int mt76_rmw_field (struct mt7603_dev*,scalar_t__,int ,int) ;

void mt7603_wtbl_set_smps(struct mt7603_dev *dev, struct mt7603_sta *sta,
     bool enabled)
{
 u32 addr = mt7603_wtbl1_addr(sta->wcid.idx);

 if (sta->smps == enabled)
  return;

 mt76_rmw_field(dev, addr + 2 * 4, MT_WTBL1_W2_SMPS, enabled);
 sta->smps = enabled;
}
