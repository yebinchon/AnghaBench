
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct e1000_hw {scalar_t__ mac_type; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int E1000_MC_TBL_SIZE ;
 int E1000_RAR_ENTRIES ;
 scalar_t__ FCAH ;
 scalar_t__ FCAL ;
 scalar_t__ FCRTH ;
 scalar_t__ FCT ;
 scalar_t__ FCTTV ;
 scalar_t__ MTA ;
 scalar_t__ RA ;
 int RCTL ;
 scalar_t__ RDBAH ;
 scalar_t__ RDBAL ;
 scalar_t__ RDH ;
 scalar_t__ RDLEN ;
 scalar_t__ RDT ;
 scalar_t__ RDTR ;
 int REG_PATTERN_TEST (scalar_t__,int,int) ;
 int REG_SET_AND_CHECK (int ,int,int) ;
 int STATUS ;
 int TCTL ;
 scalar_t__ TDBAH ;
 scalar_t__ TDBAL ;
 scalar_t__ TDLEN ;
 scalar_t__ TIDV ;
 scalar_t__ TIPG ;
 scalar_t__ TXCW ;
 scalar_t__ VET ;
 int drv ;
 scalar_t__ e1000_82543 ;
 int e_err (int ,char*,int,int) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static int e1000_reg_test(struct e1000_adapter *adapter, u64 *data)
{
 u32 value, before, after;
 u32 i, toggle;
 struct e1000_hw *hw = &adapter->hw;






 toggle = 0xFFFFF833;

 before = er32(STATUS);
 value = (er32(STATUS) & toggle);
 ew32(STATUS, toggle);
 after = er32(STATUS) & toggle;
 if (value != after) {
  e_err(drv, "failed STATUS register test got: "
        "0x%08X expected: 0x%08X\n", after, value);
  *data = 1;
  return 1;
 }

 ew32(STATUS, before);

 REG_PATTERN_TEST(FCAL, 0xFFFFFFFF, 0xFFFFFFFF);
 REG_PATTERN_TEST(FCAH, 0x0000FFFF, 0xFFFFFFFF);
 REG_PATTERN_TEST(FCT, 0x0000FFFF, 0xFFFFFFFF);
 REG_PATTERN_TEST(VET, 0x0000FFFF, 0xFFFFFFFF);

 REG_PATTERN_TEST(RDTR, 0x0000FFFF, 0xFFFFFFFF);
 REG_PATTERN_TEST(RDBAH, 0xFFFFFFFF, 0xFFFFFFFF);
 REG_PATTERN_TEST(RDLEN, 0x000FFF80, 0x000FFFFF);
 REG_PATTERN_TEST(RDH, 0x0000FFFF, 0x0000FFFF);
 REG_PATTERN_TEST(RDT, 0x0000FFFF, 0x0000FFFF);
 REG_PATTERN_TEST(FCRTH, 0x0000FFF8, 0x0000FFF8);
 REG_PATTERN_TEST(FCTTV, 0x0000FFFF, 0x0000FFFF);
 REG_PATTERN_TEST(TIPG, 0x3FFFFFFF, 0x3FFFFFFF);
 REG_PATTERN_TEST(TDBAH, 0xFFFFFFFF, 0xFFFFFFFF);
 REG_PATTERN_TEST(TDLEN, 0x000FFF80, 0x000FFFFF);

 REG_SET_AND_CHECK(RCTL, 0xFFFFFFFF, 0x00000000);

 before = 0x06DFB3FE;
 REG_SET_AND_CHECK(RCTL, before, 0x003FFFFB);
 REG_SET_AND_CHECK(TCTL, 0xFFFFFFFF, 0x00000000);

 if (hw->mac_type >= e1000_82543) {
  REG_SET_AND_CHECK(RCTL, before, 0xFFFFFFFF);
  REG_PATTERN_TEST(RDBAL, 0xFFFFFFF0, 0xFFFFFFFF);
  REG_PATTERN_TEST(TXCW, 0xC000FFFF, 0x0000FFFF);
  REG_PATTERN_TEST(TDBAL, 0xFFFFFFF0, 0xFFFFFFFF);
  REG_PATTERN_TEST(TIDV, 0x0000FFFF, 0x0000FFFF);
  value = E1000_RAR_ENTRIES;
  for (i = 0; i < value; i++) {
   REG_PATTERN_TEST(RA + (((i << 1) + 1) << 2),
      0x8003FFFF, 0xFFFFFFFF);
  }
 } else {
  REG_SET_AND_CHECK(RCTL, 0xFFFFFFFF, 0x01FFFFFF);
  REG_PATTERN_TEST(RDBAL, 0xFFFFF000, 0xFFFFFFFF);
  REG_PATTERN_TEST(TXCW, 0x0000FFFF, 0x0000FFFF);
  REG_PATTERN_TEST(TDBAL, 0xFFFFF000, 0xFFFFFFFF);
 }

 value = E1000_MC_TBL_SIZE;
 for (i = 0; i < value; i++)
  REG_PATTERN_TEST(MTA + (i << 2), 0xFFFFFFFF, 0xFFFFFFFF);

 *data = 0;
 return 0;
}
