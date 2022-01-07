
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct r8152 {int dummy; } ;


 int EFUSE_DATA_BIT16 ;
 int EFUSE_READ_CMD ;
 int MCU_TYPE_PLA ;
 int PLA_EFUSE_CMD ;
 int PLA_EFUSE_DATA ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_write_word (struct r8152*,int ,int ,int) ;

__attribute__((used)) static u32 r8152_efuse_read(struct r8152 *tp, u8 addr)
{
 u32 ocp_data;

 ocp_write_word(tp, MCU_TYPE_PLA, PLA_EFUSE_CMD, EFUSE_READ_CMD | addr);
 ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_EFUSE_CMD);
 ocp_data = (ocp_data & EFUSE_DATA_BIT16) << 9;
 ocp_data |= ocp_read_word(tp, MCU_TYPE_PLA, PLA_EFUSE_DATA);

 return ocp_data;
}
