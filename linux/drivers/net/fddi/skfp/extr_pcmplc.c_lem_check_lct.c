
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lct_extended; scalar_t__ lct_long; scalar_t__ lct_medium; scalar_t__ lct_short; } ;
struct s_smc {TYPE_1__ s; } ;
struct lem_counter {scalar_t__ lem_errors; } ;
struct s_phy {int lc_test; void* pc_lem_fail; scalar_t__ np; struct fddi_mib_p* mib; struct lem_counter lem; } ;
struct fddi_mib_p {int fddiPORTLem_Ct; scalar_t__ fddiPORTLCTFail_Ct; int fddiPORTLem_Reject_Ct; } ;


 int DB_PCMN (int,char*,scalar_t__) ;
 void* FALSE ;




 int PLC (int,int ) ;
 int PL_LINK_ERR_CTR ;
 void* TRUE ;
 int inpw (int ) ;

__attribute__((used)) static void lem_check_lct(struct s_smc *smc, struct s_phy *phy)
{
 struct lem_counter *lem = &phy->lem ;
 struct fddi_mib_p *mib ;
 int errors ;

 mib = phy->mib ;

 phy->pc_lem_fail = FALSE ;
 errors = inpw(PLC(((int)phy->np),PL_LINK_ERR_CTR)) ;
 lem->lem_errors += errors ;
 mib->fddiPORTLem_Ct += errors ;
 if (lem->lem_errors) {
  switch(phy->lc_test) {
  case 128:
   if (lem->lem_errors >= smc->s.lct_short)
    phy->pc_lem_fail = TRUE ;
   break ;
  case 129:
   if (lem->lem_errors >= smc->s.lct_medium)
    phy->pc_lem_fail = TRUE ;
   break ;
  case 130:
   if (lem->lem_errors >= smc->s.lct_long)
    phy->pc_lem_fail = TRUE ;
   break ;
  case 131:
   if (lem->lem_errors >= smc->s.lct_extended)
    phy->pc_lem_fail = TRUE ;
   break ;
  }
  DB_PCMN(1, " >>errors : %lu", lem->lem_errors);
 }
 if (phy->pc_lem_fail) {
  mib->fddiPORTLCTFail_Ct++ ;
  mib->fddiPORTLem_Reject_Ct++ ;
 }
 else
  mib->fddiPORTLCTFail_Ct = 0 ;
}
