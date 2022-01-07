
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int * ops; } ;


 int rtl8402_pcr_ops ;
 int rtl8411 ;
 int rtl8411_init_common_params (struct rtsx_pcr*) ;
 int set_pull_ctrl_tables (struct rtsx_pcr*,int ) ;

void rtl8402_init_params(struct rtsx_pcr *pcr)
{
 rtl8411_init_common_params(pcr);
 pcr->ops = &rtl8402_pcr_ops;
 set_pull_ctrl_tables(pcr, rtl8411);
}
