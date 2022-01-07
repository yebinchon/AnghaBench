
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int green; } ;
struct r8152 {TYPE_1__ ups_info; } ;


 int GREEN_ETH_EN ;
 int SRAM_GREEN_CFG ;
 int sram_read (struct r8152*,int) ;
 int sram_write (struct r8152*,int,int) ;

__attribute__((used)) static void r8153b_green_en(struct r8152 *tp, bool enable)
{
 u16 data;

 if (enable) {
  sram_write(tp, 0x8045, 0);
  sram_write(tp, 0x804d, 0x1222);
  sram_write(tp, 0x805d, 0x0022);
 } else {
  sram_write(tp, 0x8045, 0x2444);
  sram_write(tp, 0x804d, 0x2444);
  sram_write(tp, 0x805d, 0x2444);
 }

 data = sram_read(tp, SRAM_GREEN_CFG);
 data |= GREEN_ETH_EN;
 sram_write(tp, SRAM_GREEN_CFG, data);

 tp->ups_info.green = enable;
}
