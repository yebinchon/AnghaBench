
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpsw_sl {int dummy; } ;


 int CPSW_SL_MACCONTROL ;
 int cpsw_sl_reg_write (struct cpsw_sl*,int ,int ) ;

void cpsw_sl_ctl_reset(struct cpsw_sl *sl)
{
 cpsw_sl_reg_write(sl, CPSW_SL_MACCONTROL, 0);
}
