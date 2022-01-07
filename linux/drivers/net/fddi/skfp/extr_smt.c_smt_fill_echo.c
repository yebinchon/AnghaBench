
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef scalar_t__ u_char ;
struct TYPE_2__ {int p_len; } ;
struct smt_p_echo {scalar_t__* ec_data; TYPE_1__ para; } ;
struct s_smc {int dummy; } ;


 int SK_UNUSED (struct s_smc*) ;
 int SMTSETPARA (struct smt_p_echo*,int ) ;
 int SMT_P_ECHODATA ;

__attribute__((used)) static void smt_fill_echo(struct s_smc *smc, struct smt_p_echo *echo, u_long seed,
     int len)
{
 u_char *p ;

 SK_UNUSED(smc) ;
 SMTSETPARA(echo,SMT_P_ECHODATA) ;
 echo->para.p_len = len ;
 for (p = echo->ec_data ; len ; len--) {
  *p++ = (u_char) seed ;
  seed += 13 ;
 }
}
