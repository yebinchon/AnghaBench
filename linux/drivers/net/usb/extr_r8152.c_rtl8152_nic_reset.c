
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int dummy; } ;


 int CR_RST ;
 int MCU_TYPE_PLA ;
 int PLA_CR ;
 int ocp_read_byte (struct r8152*,int ,int ) ;
 int ocp_write_byte (struct r8152*,int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void rtl8152_nic_reset(struct r8152 *tp)
{
 int i;

 ocp_write_byte(tp, MCU_TYPE_PLA, PLA_CR, CR_RST);

 for (i = 0; i < 1000; i++) {
  if (!(ocp_read_byte(tp, MCU_TYPE_PLA, PLA_CR) & CR_RST))
   break;
  usleep_range(100, 400);
 }
}
