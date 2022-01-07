
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stv6110x_state {int * regs; TYPE_1__* config; } ;
struct TYPE_2__ {int clk_div; } ;


 int CTRL2_CO_DIV ;
 size_t STV6110x_CTRL2 ;
 int STV6110x_SETFIELD (int ,int ,int) ;

__attribute__((used)) static void stv6110x_setup_divider(struct stv6110x_state *stv6110x)
{
 switch (stv6110x->config->clk_div) {
 default:
 case 1:
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_CTRL2],
      CTRL2_CO_DIV,
      0);
  break;
 case 2:
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_CTRL2],
      CTRL2_CO_DIV,
      1);
  break;
 case 4:
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_CTRL2],
      CTRL2_CO_DIV,
      2);
  break;
 case 8:
 case 0:
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_CTRL2],
      CTRL2_CO_DIV,
      3);
  break;
 }
}
