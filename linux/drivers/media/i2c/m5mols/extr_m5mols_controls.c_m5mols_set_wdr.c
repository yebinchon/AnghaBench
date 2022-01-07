
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m5mols_info {int sd; } ;


 int CAPP_WDR_EN ;
 int MON_TONE_CTL ;
 int REG_CAPTURE ;
 int m5mols_set_mode (struct m5mols_info*,int ) ;
 int m5mols_write (int *,int ,int) ;

__attribute__((used)) static int m5mols_set_wdr(struct m5mols_info *info, int wdr)
{
 int ret;

 ret = m5mols_write(&info->sd, MON_TONE_CTL, wdr ? 9 : 5);
 if (ret < 0)
  return ret;

 ret = m5mols_set_mode(info, REG_CAPTURE);
 if (ret < 0)
  return ret;

 return m5mols_write(&info->sd, CAPP_WDR_EN, wdr);
}
