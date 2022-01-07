
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int saved_wolopts; } ;


 int CRWECR_CONFIG ;
 int CRWECR_NORAML ;
 int LINK_OFF_WAKE_EN ;
 int MCU_TYPE_PLA ;
 int PLA_CONFIG34 ;
 int PLA_CRWECR ;
 int WAKE_ANY ;
 int __rtl_set_wol (struct r8152*,int ) ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_write_byte (struct r8152*,int ,int ,int ) ;
 int ocp_write_word (struct r8152*,int ,int ,int ) ;

__attribute__((used)) static void rtl_runtime_suspend_enable(struct r8152 *tp, bool enable)
{
 if (enable) {
  u32 ocp_data;

  __rtl_set_wol(tp, WAKE_ANY);

  ocp_write_byte(tp, MCU_TYPE_PLA, PLA_CRWECR, CRWECR_CONFIG);

  ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_CONFIG34);
  ocp_data |= LINK_OFF_WAKE_EN;
  ocp_write_word(tp, MCU_TYPE_PLA, PLA_CONFIG34, ocp_data);

  ocp_write_byte(tp, MCU_TYPE_PLA, PLA_CRWECR, CRWECR_NORAML);
 } else {
  u32 ocp_data;

  __rtl_set_wol(tp, tp->saved_wolopts);

  ocp_write_byte(tp, MCU_TYPE_PLA, PLA_CRWECR, CRWECR_CONFIG);

  ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_CONFIG34);
  ocp_data &= ~LINK_OFF_WAKE_EN;
  ocp_write_word(tp, MCU_TYPE_PLA, PLA_CONFIG34, ocp_data);

  ocp_write_byte(tp, MCU_TYPE_PLA, PLA_CRWECR, CRWECR_NORAML);
 }
}
