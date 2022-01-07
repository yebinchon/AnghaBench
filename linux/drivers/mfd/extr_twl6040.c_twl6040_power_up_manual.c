
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl6040 {int dev; } ;


 int TWL6040_HSLDOENA ;
 int TWL6040_LPLLENA ;
 int TWL6040_LSLDOENA ;
 int TWL6040_NCPENA ;
 int TWL6040_OSCENA ;
 int TWL6040_REFENA ;
 int TWL6040_REG_LDOCTL ;
 int TWL6040_REG_LPPLLCTL ;
 int TWL6040_REG_NCPCTL ;
 int dev_err (int ,char*) ;
 int twl6040_reg_write (struct twl6040*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int twl6040_power_up_manual(struct twl6040 *twl6040)
{
 u8 ldoctl, ncpctl, lppllctl;
 int ret;


 ldoctl = TWL6040_HSLDOENA | TWL6040_REFENA | TWL6040_OSCENA;
 ret = twl6040_reg_write(twl6040, TWL6040_REG_LDOCTL, ldoctl);
 if (ret)
  return ret;
 usleep_range(10000, 10500);


 ncpctl = TWL6040_NCPENA;
 ret = twl6040_reg_write(twl6040, TWL6040_REG_NCPCTL, ncpctl);
 if (ret)
  goto ncp_err;
 usleep_range(1000, 1500);


 ldoctl |= TWL6040_LSLDOENA;
 ret = twl6040_reg_write(twl6040, TWL6040_REG_LDOCTL, ldoctl);
 if (ret)
  goto lsldo_err;
 usleep_range(1000, 1500);


 lppllctl = TWL6040_LPLLENA;
 ret = twl6040_reg_write(twl6040, TWL6040_REG_LPPLLCTL, lppllctl);
 if (ret)
  goto lppll_err;
 usleep_range(5000, 5500);


 ldoctl &= ~TWL6040_OSCENA;
 ret = twl6040_reg_write(twl6040, TWL6040_REG_LDOCTL, ldoctl);
 if (ret)
  goto osc_err;

 return 0;

osc_err:
 lppllctl &= ~TWL6040_LPLLENA;
 twl6040_reg_write(twl6040, TWL6040_REG_LPPLLCTL, lppllctl);
lppll_err:
 ldoctl &= ~TWL6040_LSLDOENA;
 twl6040_reg_write(twl6040, TWL6040_REG_LDOCTL, ldoctl);
lsldo_err:
 ncpctl &= ~TWL6040_NCPENA;
 twl6040_reg_write(twl6040, TWL6040_REG_NCPCTL, ncpctl);
ncp_err:
 ldoctl &= ~(TWL6040_HSLDOENA | TWL6040_REFENA | TWL6040_OSCENA);
 twl6040_reg_write(twl6040, TWL6040_REG_LDOCTL, ldoctl);

 dev_err(twl6040->dev, "manual power-up failed\n");
 return ret;
}
