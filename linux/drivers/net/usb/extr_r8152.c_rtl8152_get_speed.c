
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8152 {int dummy; } ;


 int MCU_TYPE_PLA ;
 int PLA_PHYSTATUS ;
 int ocp_read_byte (struct r8152*,int ,int ) ;

__attribute__((used)) static inline u8 rtl8152_get_speed(struct r8152 *tp)
{
 return ocp_read_byte(tp, MCU_TYPE_PLA, PLA_PHYSTATUS);
}
