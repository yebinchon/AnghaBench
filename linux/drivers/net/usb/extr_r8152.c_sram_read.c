
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8152 {int dummy; } ;


 int OCP_SRAM_ADDR ;
 int OCP_SRAM_DATA ;
 int ocp_reg_read (struct r8152*,int ) ;
 int ocp_reg_write (struct r8152*,int ,int ) ;

__attribute__((used)) static u16 sram_read(struct r8152 *tp, u16 addr)
{
 ocp_reg_write(tp, OCP_SRAM_ADDR, addr);
 return ocp_reg_read(tp, OCP_SRAM_DATA);
}
