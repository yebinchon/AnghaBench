
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ov7251 {int dummy; } ;
typedef int s32 ;


 int OV7251_AEC_EXPO_0 ;
 int ov7251_write_seq_regs (struct ov7251*,int ,int*,int) ;

__attribute__((used)) static int ov7251_set_exposure(struct ov7251 *ov7251, s32 exposure)
{
 u16 reg;
 u8 val[3];

 reg = OV7251_AEC_EXPO_0;
 val[0] = (exposure & 0xf000) >> 12;
 val[1] = (exposure & 0x0ff0) >> 4;
 val[2] = (exposure & 0x000f) << 4;

 return ov7251_write_seq_regs(ov7251, reg, val, 3);
}
