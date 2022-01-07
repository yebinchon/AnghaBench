
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct s_smc {int dummy; } ;
struct lem_counter {int lem_errors; int lem_float_ber; int lem_on; } ;
struct s_phy {scalar_t__ np; void* pc_lem_fail; struct fddi_mib_p* mib; struct lem_counter lem; } ;
struct fddi_mib_p {int fddiPORTLem_Ct; int fddiPORTLer_Estimate; int fddiPORTLer_Alarm; int fddiPORTLerFlag; int fddiPORTLer_Cutoff; int fddiPORTLem_Reject_Ct; } ;


 int DB_PCMN (int,char*,char,...) ;
 scalar_t__ EVENT_PCM ;
 void* FALSE ;
 scalar_t__ INDEX_PORT ;
 scalar_t__ PB ;
 int PC_START ;
 int PLC (int,int ) ;
 int PL_LINK_ERR_CTR ;
 int SMT_COND_PORT_LER ;
 void* TRUE ;
 int inpw (int ) ;
 int queue_event (struct s_smc*,int,int ) ;
 int smt_ler_alarm_check (struct s_smc*,struct s_phy*,int) ;
 int smt_port_off_event (struct s_smc*,scalar_t__) ;
 int smt_srf_event (struct s_smc*,int ,int,int) ;

__attribute__((used)) static void lem_evaluate(struct s_smc *smc, struct s_phy *phy)
{
 int ber ;
 u_long errors ;
 struct lem_counter *lem = &phy->lem ;
 struct fddi_mib_p *mib ;
 int cond ;

 mib = phy->mib ;

 if (!lem->lem_on)
  return ;

 errors = inpw(PLC(((int) phy->np),PL_LINK_ERR_CTR)) ;
 lem->lem_errors += errors ;
 mib->fddiPORTLem_Ct += errors ;

 errors = lem->lem_errors ;
  if (!errors) ber = 15 ;
 else if (errors <= 9) ber = 9 ;
 else if (errors <= 99) ber = 8 ;
 else if (errors <= 999) ber = 7 ;
 else if (errors <= 9999) ber = 6 ;
 else if (errors <= 99999) ber = 5 ;
 else if (errors <= 999999) ber = 4 ;
 else if (errors <= 9999999) ber = 3 ;
 else if (errors <= 99999999) ber = 2 ;
 else if (errors <= 999999999) ber = 1 ;
 else ber = 0 ;




 ber *= 100 ;
 lem->lem_float_ber = lem->lem_float_ber * 7 + ber * 3 ;
 lem->lem_float_ber /= 10 ;
 mib->fddiPORTLer_Estimate = lem->lem_float_ber / 100 ;
 if (mib->fddiPORTLer_Estimate < 4) {
  mib->fddiPORTLer_Estimate = 4 ;
 }

 if (lem->lem_errors) {
  DB_PCMN(1, "LEM %c :", phy->np == PB ? 'B' : 'A');
  DB_PCMN(1, "errors      : %ld", lem->lem_errors);
  DB_PCMN(1, "sum_errors  : %ld", mib->fddiPORTLem_Ct);
  DB_PCMN(1, "current BER : 10E-%d", ber / 100);
  DB_PCMN(1, "float BER   : 10E-(%d/100)", lem->lem_float_ber);
  DB_PCMN(1, "avg. BER    : 10E-%d", mib->fddiPORTLer_Estimate);
 }

 lem->lem_errors = 0L ;


 cond = (mib->fddiPORTLer_Estimate <= mib->fddiPORTLer_Alarm) ?
  TRUE : FALSE ;



 if (cond != mib->fddiPORTLerFlag) {
  smt_srf_event(smc,SMT_COND_PORT_LER,
   (int) (INDEX_PORT+ phy->np) ,cond) ;
 }


 if ( mib->fddiPORTLer_Estimate <= mib->fddiPORTLer_Cutoff) {
  phy->pc_lem_fail = TRUE ;
  mib->fddiPORTLem_Reject_Ct++ ;




  lem->lem_float_ber += 2*100 ;
  queue_event(smc,(int)(EVENT_PCM+phy->np),PC_START) ;

 }
}
