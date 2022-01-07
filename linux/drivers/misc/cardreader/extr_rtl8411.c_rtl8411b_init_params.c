
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int * ops; } ;


 int rtl8411_init_common_params (struct rtsx_pcr*) ;
 scalar_t__ rtl8411b_is_qfn48 (struct rtsx_pcr*) ;
 int rtl8411b_pcr_ops ;
 int rtl8411b_qfn48 ;
 int rtl8411b_qfn64 ;
 int set_pull_ctrl_tables (struct rtsx_pcr*,int ) ;

void rtl8411b_init_params(struct rtsx_pcr *pcr)
{
 rtl8411_init_common_params(pcr);
 pcr->ops = &rtl8411b_pcr_ops;
 if (rtl8411b_is_qfn48(pcr))
  set_pull_ctrl_tables(pcr, rtl8411b_qfn48);
 else
  set_pull_ctrl_tables(pcr, rtl8411b_qfn64);
}
