
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {TYPE_2__ hw; } ;


 int IXGBE_MAX_RSS_INDICES ;
 int IXGBE_MAX_RSS_INDICES_X550 ;







__attribute__((used)) static inline u8 ixgbe_max_rss_indices(struct ixgbe_adapter *adapter)
{
 switch (adapter->hw.mac.type) {
 case 133:
 case 132:
 case 131:
  return IXGBE_MAX_RSS_INDICES;
 case 130:
 case 129:
 case 128:
  return IXGBE_MAX_RSS_INDICES_X550;
 default:
  return 0;
 }
}
