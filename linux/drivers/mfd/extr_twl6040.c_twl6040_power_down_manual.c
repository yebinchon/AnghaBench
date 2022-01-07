
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl6040 {int dummy; } ;


 int TWL6040_HSLDOENA ;
 int TWL6040_LPLLENA ;
 int TWL6040_LSLDOENA ;
 int TWL6040_NCPENA ;
 int TWL6040_OSCENA ;
 int TWL6040_REFENA ;
 int TWL6040_REG_LDOCTL ;
 int TWL6040_REG_LPPLLCTL ;
 int TWL6040_REG_NCPCTL ;
 int twl6040_reg_read (struct twl6040*,int ) ;
 int twl6040_reg_write (struct twl6040*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void twl6040_power_down_manual(struct twl6040 *twl6040)
{
 u8 ncpctl, ldoctl, lppllctl;

 ncpctl = twl6040_reg_read(twl6040, TWL6040_REG_NCPCTL);
 ldoctl = twl6040_reg_read(twl6040, TWL6040_REG_LDOCTL);
 lppllctl = twl6040_reg_read(twl6040, TWL6040_REG_LPPLLCTL);


 ldoctl |= TWL6040_OSCENA;
 twl6040_reg_write(twl6040, TWL6040_REG_LDOCTL, ldoctl);
 usleep_range(1000, 1500);


 lppllctl &= ~TWL6040_LPLLENA;
 twl6040_reg_write(twl6040, TWL6040_REG_LPPLLCTL, lppllctl);


 ldoctl &= ~TWL6040_LSLDOENA;
 twl6040_reg_write(twl6040, TWL6040_REG_LDOCTL, ldoctl);


 ncpctl &= ~TWL6040_NCPENA;
 twl6040_reg_write(twl6040, TWL6040_REG_NCPCTL, ncpctl);


 ldoctl &= ~(TWL6040_HSLDOENA | TWL6040_REFENA | TWL6040_OSCENA);
 twl6040_reg_write(twl6040, TWL6040_REG_LDOCTL, ldoctl);
}
