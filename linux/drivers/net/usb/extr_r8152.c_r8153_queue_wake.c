
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int dummy; } ;


 int LINK_CHANGE_FLAG ;
 int LINK_CHG_EVENT ;
 int MCU_TYPE_PLA ;
 int PLA_EXTRA_STATUS ;
 int PLA_INDICATE_FALG ;
 int PLA_SUSPEND_FLAG ;
 int UPCOMING_RUNTIME_D3 ;
 int ocp_read_byte (struct r8152*,int ,int ) ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_write_byte (struct r8152*,int ,int ,int ) ;
 int ocp_write_word (struct r8152*,int ,int ,int ) ;

__attribute__((used)) static void r8153_queue_wake(struct r8152 *tp, bool enable)
{
 u32 ocp_data;

 ocp_data = ocp_read_byte(tp, MCU_TYPE_PLA, PLA_INDICATE_FALG);
 if (enable)
  ocp_data |= UPCOMING_RUNTIME_D3;
 else
  ocp_data &= ~UPCOMING_RUNTIME_D3;
 ocp_write_byte(tp, MCU_TYPE_PLA, PLA_INDICATE_FALG, ocp_data);

 ocp_data = ocp_read_byte(tp, MCU_TYPE_PLA, PLA_SUSPEND_FLAG);
 ocp_data &= ~LINK_CHG_EVENT;
 ocp_write_byte(tp, MCU_TYPE_PLA, PLA_SUSPEND_FLAG, ocp_data);

 ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_EXTRA_STATUS);
 ocp_data &= ~LINK_CHANGE_FLAG;
 ocp_write_word(tp, MCU_TYPE_PLA, PLA_EXTRA_STATUS, ocp_data);
}
