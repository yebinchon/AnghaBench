
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_1__ phy; } ;
struct igb_adapter {struct e1000_hw hw; } ;


 int E1000_CONNSW ;
 int E1000_CONNSW_AUTOSENSE_EN ;
 int E1000_CONNSW_ENRGSRC ;
 int E1000_CONNSW_SERDESD ;
 scalar_t__ e1000_media_type_copper ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;
 int wrfl () ;

__attribute__((used)) static void igb_enable_mas(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 connsw = rd32(E1000_CONNSW);


 if ((hw->phy.media_type == e1000_media_type_copper) &&
     (!(connsw & E1000_CONNSW_SERDESD))) {
  connsw |= E1000_CONNSW_ENRGSRC;
  connsw |= E1000_CONNSW_AUTOSENSE_EN;
  wr32(E1000_CONNSW, connsw);
  wrfl();
 }
}
