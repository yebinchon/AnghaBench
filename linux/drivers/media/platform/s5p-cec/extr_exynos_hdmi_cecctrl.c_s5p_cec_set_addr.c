
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s5p_cec_dev {scalar_t__ reg; } ;


 scalar_t__ S5P_CEC_LOGIC_ADDR ;
 int writeb (int,scalar_t__) ;

void s5p_cec_set_addr(struct s5p_cec_dev *cec, u32 addr)
{
 writeb(addr & 0x0F, cec->reg + S5P_CEC_LOGIC_ADDR);
}
