
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RV2P_BD_PAGE_SIZE ;
 int RV2P_BD_PAGE_SIZE_MSK ;


__attribute__((used)) static u32
rv2p_fw_fixup(u32 rv2p_proc, int idx, u32 loc, u32 rv2p_code)
{
 switch (idx) {
 case 128:
  rv2p_code &= ~RV2P_BD_PAGE_SIZE_MSK;
  rv2p_code |= RV2P_BD_PAGE_SIZE;
  break;
 }
 return rv2p_code;
}
