
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* a; } ;
struct s_smc {TYPE_2__ mib; } ;
struct TYPE_3__ {scalar_t__ fddiPATHT_Rmode; } ;


 int ADDR (int ) ;
 int B2_RTM_INI ;
 int DB_RMT (char*,int) ;
 size_t PATH0 ;
 int outpd (int ,scalar_t__) ;

void rtm_set_timer(struct s_smc *smc)
{



 DB_RMT("RMT: setting new fddiPATHT_Rmode, t = %d ns",
        (int)smc->mib.a[PATH0].fddiPATHT_Rmode);
 outpd(ADDR(B2_RTM_INI),smc->mib.a[PATH0].fddiPATHT_Rmode) ;
}
