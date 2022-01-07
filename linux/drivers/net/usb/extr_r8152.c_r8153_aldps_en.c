
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int aldps; } ;
struct r8152 {TYPE_1__ ups_info; } ;


 int EN_ALDPS ;
 int MCU_TYPE_PLA ;
 int OCP_POWER_CFG ;
 int ocp_read_word (struct r8152*,int ,int) ;
 int ocp_reg_read (struct r8152*,int ) ;
 int ocp_reg_write (struct r8152*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void r8153_aldps_en(struct r8152 *tp, bool enable)
{
 u16 data;

 data = ocp_reg_read(tp, OCP_POWER_CFG);
 if (enable) {
  data |= EN_ALDPS;
  ocp_reg_write(tp, OCP_POWER_CFG, data);
 } else {
  int i;

  data &= ~EN_ALDPS;
  ocp_reg_write(tp, OCP_POWER_CFG, data);
  for (i = 0; i < 20; i++) {
   usleep_range(1000, 2000);
   if (ocp_read_word(tp, MCU_TYPE_PLA, 0xe000) & 0x0100)
    break;
  }
 }

 tp->ups_info.aldps = enable;
}
