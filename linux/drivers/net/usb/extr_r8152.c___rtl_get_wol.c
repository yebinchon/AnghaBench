
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int dummy; } ;


 int BWF_EN ;
 int LINK_ON_WAKE_EN ;
 int MAGIC_EN ;
 int MCU_TYPE_PLA ;
 int MWF_EN ;
 int PLA_CFG_WOL ;
 int PLA_CONFIG34 ;
 int PLA_CONFIG5 ;
 int UWF_EN ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 int ocp_read_word (struct r8152*,int ,int ) ;

__attribute__((used)) static u32 __rtl_get_wol(struct r8152 *tp)
{
 u32 ocp_data;
 u32 wolopts = 0;

 ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_CONFIG34);
 if (ocp_data & LINK_ON_WAKE_EN)
  wolopts |= WAKE_PHY;

 ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_CONFIG5);
 if (ocp_data & UWF_EN)
  wolopts |= WAKE_UCAST;
 if (ocp_data & BWF_EN)
  wolopts |= WAKE_BCAST;
 if (ocp_data & MWF_EN)
  wolopts |= WAKE_MCAST;

 ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_CFG_WOL);
 if (ocp_data & MAGIC_EN)
  wolopts |= WAKE_MAGIC;

 return wolopts;
}
