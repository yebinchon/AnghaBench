
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DIV_ROUND_UP (int ,int) ;
 int OV5695_XVCLK_FREQ ;

__attribute__((used)) static inline u32 ov5695_cal_delay(u32 cycles)
{
 return DIV_ROUND_UP(cycles, OV5695_XVCLK_FREQ / 1000 / 1000);
}
