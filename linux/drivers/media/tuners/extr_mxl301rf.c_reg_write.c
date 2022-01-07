
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl301rf_state {int dummy; } ;


 int raw_write (struct mxl301rf_state*,int *,int) ;

__attribute__((used)) static int reg_write(struct mxl301rf_state *state, u8 reg, u8 val)
{
 u8 buf[2] = { reg, val };

 return raw_write(state, buf, 2);
}
