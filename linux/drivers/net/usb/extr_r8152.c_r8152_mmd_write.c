
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8152 {int dummy; } ;


 int OCP_EEE_AR ;
 int OCP_EEE_DATA ;
 int ocp_reg_write (struct r8152*,int ,int) ;
 int r8152_mmd_indirect (struct r8152*,int,int) ;

__attribute__((used)) static void r8152_mmd_write(struct r8152 *tp, u16 dev, u16 reg, u16 data)
{
 r8152_mmd_indirect(tp, dev, reg);
 ocp_reg_write(tp, OCP_EEE_DATA, data);
 ocp_reg_write(tp, OCP_EEE_AR, 0x0000);
}
