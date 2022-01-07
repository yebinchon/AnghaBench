
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct s_smc {int dummy; } ;


 int FM_A (int ) ;
 int FM_SPCEPDA0 ;
 int FM_SPCEPDA1 ;
 int FM_SPCEPDS ;
 int FM_SQLCKA0 ;
 int FM_SQLCKS ;
 int FM_ST1L ;
 int FM_ST1U ;
 int FM_STBURA0 ;
 int FM_STBURA1 ;
 int FM_STBURS ;
 int FM_STECFRMA0 ;
 int FM_STEFRMA0 ;
 int FM_STEFRMS ;
 int FM_STXABRA0 ;
 int FM_STXABRS ;
 int FM_SXMTABT ;
 int SMT_E0133 ;
 int SMT_E0133_MSG ;
 int SMT_E0134 ;
 int SMT_E0134_MSG ;
 int SMT_PANIC (struct s_smc*,int ,int ) ;
 int formac_tx_restart (struct s_smc*) ;
 int inpw (int ) ;
 int llc_restart_tx (struct s_smc*) ;

void mac1_irq(struct s_smc *smc, u_short stu, u_short stl)
{
 int restart_tx = 0 ;
again:




 if (stl & (FM_SPCEPDS |
     FM_SPCEPDA0 |
     FM_SPCEPDA1)) {
  SMT_PANIC(smc,SMT_E0134, SMT_E0134_MSG) ;
 }



 if (stl & (FM_STBURS |
     FM_STBURA0 |
     FM_STBURA1)) {
  SMT_PANIC(smc,SMT_E0133, SMT_E0133_MSG) ;
 }

 if ( (stu & (FM_SXMTABT |
       FM_STXABRS |
       FM_STXABRA0)) ||
      (stl & (FM_SQLCKS |
       FM_SQLCKA0)) ) {
  formac_tx_restart(smc) ;
  restart_tx = 1 ;
  stu = inpw(FM_A(FM_ST1U)) ;
  stl = inpw(FM_A(FM_ST1L)) ;
  stu &= ~ (FM_STECFRMA0 | FM_STEFRMA0 | FM_STEFRMS) ;
  if (stu || stl)
   goto again ;
 }

 if (stu & (FM_STEFRMA0 |
      FM_STEFRMS)) {
  restart_tx = 1 ;
 }

 if (restart_tx)
  llc_restart_tx(smc) ;
}
